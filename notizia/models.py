from django.db import models
from django.conf import settings
from django.contrib.auth.models import User
from django.template.defaultfilters import slugify

# Create your models here.
class Country(models.Model):
    name = models.CharField(max_length=120)

    def __str__(self):
        return self.name


class Notizia(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    title = models.CharField(max_length=30)
    description = models.TextField(null=True,blank=True)
    # citta = models.ForeignKey('comuni_italiani.Comune', on_delete=models.PROTECT)
    # citta = models.ForeignKey(Country, on_delete=models.CASCADE)
    citta = models.ForeignKey('comuni_italiani.Comune', on_delete=models.CASCADE)
    created_date = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['-last_modified']

    def get_absolute_url(self):
        return reverse("notizia:notizia_list", kwargs={"id": self.id})

class Images(models.Model):
    note = models.ForeignKey(Notizia,on_delete=models.CASCADE)
    image = models.FileField(upload_to='images',null=True,blank=True)

class News(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    title = models.CharField(max_length=30)
    description = models.TextField(null=True,blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)
    files = models.ImageField(upload_to='images',null=True,blank=True)


class Anagrafica(models.Model):
    nome = models.CharField(max_length=32)
    email = models.EmailField()
