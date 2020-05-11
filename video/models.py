from django.db import models
from django.urls import reverse

class Video(models.Model):
    FORMATO_VIDEO_CHOICES = (
    ("640", "640"),
    ("1280", "720"),
    ("1920", "1080"),
    )
    POSIZIONE_VIDEO_CHOICES = (
    ("VERT", "Verticale"),
    ("ORIZ", "Orizzontale"),
    )
    CODINO_CHOICES = (
    ("SENZA", "Senza"),
    ("CODIN", "Codino"),
    )

    title   = models.CharField(max_length=120)
    content = models.TextField()
    formato = models.CharField(max_length=4, choices=FORMATO_VIDEO_CHOICES, default=1280)
    posizione = models.CharField(max_length=4, choices=POSIZIONE_VIDEO_CHOICES, default='ORIZ')
    codino = models.CharField(max_length=5, choices=CODINO_CHOICES, default='CODIN')
    video = models.FileField(upload_to='video/original', default='')
    video_480 = models.FileField(upload_to='video/mp4_480', blank=True, null=True)
    video_720 = models.FileField(upload_to='video/mp4_720',blank=True, null=True)

    def get_absolute_url(self):
        return reverse("video:video-detail", kwargs={"id": self.id})

    def __str__(self):
        return self.title
