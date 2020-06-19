from django.shortcuts import render

# Create your views here.
# ajax_views.py
from rest_framework import viewsets
from .models import RelatedImage
from .serializers import RelatedImageSerializer

class RelatedImageAJAXView(viewsets.ModelViewSet):
    serializer_class = RelatedImageSerializer
    queryset = RelatedImage.objects.all()
