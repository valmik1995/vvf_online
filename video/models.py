from django.db import models
from django.urls import reverse

class Video(models.Model):
    title   = models.CharField(max_length=120)
    content = models.TextField()
    video = models.FileField(upload_to='video/original', default='')
    video_480 = models.FileField(upload_to='video/mp4_480', blank=True, null=True)
    video_720 = models.FileField(upload_to='video/mp4_720',blank=True, null=True)

    def get_absolute_url(self):
        return reverse("video:video-detail", kwargs={"id": self.id})

    def __str__(self):
        return self.title
