from django.db import models


# Create your models here.
class RelatedImage(models.Model):
  image = models.ImageField(upload_to='eventi_images/')
  def __unicode__(self):
    return self.image.url

class Eventi(models.Model):
  title = models.CharField(max_length=255)
  description = models.TextField()

class EventiImage(models.Model):
  image = models.ForeignKey(RelatedImage, on_delete=models.CASCADE)
  eventi = models.ForeignKey(Eventi, on_delete=models.CASCADE)
