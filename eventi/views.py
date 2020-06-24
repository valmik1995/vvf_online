from rest_framework import generics
from .serializers import EventiImageSerializer
from .models import EventiImage

class EventiImageList(generics.ListAPIView):
    serializer_class = EventiImageSerializer
    queryset = EventiImage.objects.all()
