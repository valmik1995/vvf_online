from rest_framework import generics
from rest_framework.exceptions import ParseError
from rest_framework.parsers import FileUploadParser
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import status
from PIL import Image
from .serializers import EventiImageSerializer, FileSerializer
from .models import EventiImage, RelatedImage

class EventiImageList(generics.ListAPIView):
    serializer_class = EventiImageSerializer
    queryset = EventiImage.objects.all()

class ImageUploadParser(FileUploadParser):
    media_type = 'image/*'

class MyUploadView(APIView):
    parser_class = (ImageUploadParser,)

    def put(self, request, format=None):
        if 'image' not in request.data:
            raise ParseError("Empty content")

        f = request.data['image']

        try:
            img = Image.open(f)
            img.verify()
        except:
            raise ParseError("Unsupported image type")

        RelatedImage.image.save(f.name, f, save=True)
        return Response(status=status.HTTP_201_CREATED)

class FileUploadView(APIView):
    parser_class = (FileUploadParser,)

    def post(self, request, *args, **kwargs):

      image_serializer = FileSerializer(data=request.data)

      if image_serializer.is_valid():
          image_serializer.save()
          return Response(image_serializer.data, status=status.HTTP_201_CREATED)
      else:
          return Response(image_serializer.errors, status=status.HTTP_400_BAD_REQUEST)
