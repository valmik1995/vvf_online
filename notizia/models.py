from django.db import models
from django.conf import settings
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify


class Notizia(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    title = models.CharField(max_length=30)
    description = models.TextField(null=True,blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['-last_modified']

class Images(models.Model):
    note = models.ForeignKey(Notizia,on_delete=models.CASCADE)
    image = models.ImageField(upload_to='images',null=True,blank=True)
