from django.db import models
from django.urls import reverse

class Video(models.Model):
    FORMATO_VIDEO_CHOICES = (
    ("640", "640"),
    ("1280", "720"),
    ("1920", "1080"),
    )
    title   = models.CharField(max_length=120)
    content = models.TextField()
    formato = models.CharField(max_length=4, choices=FORMATO_VIDEO_CHOICES, default=1280)
    video = models.FileField(upload_to='video/original', default='')
    video_480 = models.FileField(upload_to='video/mp4_480', blank=True, null=True)
    video_720 = models.FileField(upload_to='video/mp4_720',blank=True, null=True)

    def get_absolute_url(self):
        return reverse("video:video-detail", kwargs={"id": self.id})

    def __str__(self):
        return self.title
