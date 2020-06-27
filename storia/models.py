from django.db import models
from django.contrib.auth.models import User

class Storia(models.Model):
    user=models.ForeignKey(User, on_delete=models.CASCADE)
    text=models.TextField(blank=False, max_length=500)

class StoriaFile(models.Model):
    title = models.CharField(max_length=30, null=True)
    file = models.FileField(upload_to="storia/%Y/%m/%d")
    storia = models.ForeignKey(Storia, on_delete=models.CASCADE)

class StoriaVideoFile(models.Model):
    title = models.CharField(max_length=30, null=True)
    file = models.FileField(upload_to="storia/video/%Y/%m/%d")
    storia = models.ForeignKey(Storia, on_delete=models.CASCADE)
