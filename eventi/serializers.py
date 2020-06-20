from .rest_framework import serializers
from .models import RelatedImage

class RelatedImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = RelatedImage
        fields = ('id', 'image')
