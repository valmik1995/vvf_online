from rest_framework import serializers
from .models import RelatedImage, EventiImage

class RelatedImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = RelatedImage
        fields = ('id', 'image')

class EventiImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = EventiImage
        fields = ('title', 'description', 'image')


class FileSerializer(serializers.ModelSerializer):
    class Meta:
        model = RelatedImage
        fields = "__all__"
