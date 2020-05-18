from django.db import models

class Photo(models.Model):
    title = models.CharField(max_length=255, blank=True)
    file = models.FileField(upload_to='photos/')
    file_watermark = models.FileField(upload_to='photos/')
    uploaded_at = models.DateTimeField(auto_now_add=True)

class Notizia(models.Model):
    user = models.ForeignKey(User,on_delete=models.CASCADE,null=True)
    title = models.CharField(max_length=30)
    text = models.TextField(null=True,blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
    last_modified = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.title

class Images(models.Model):
    note = models.ForeignKey(Notizia,on_delete=models.CASCADE)
    image = models.ImageField(upload_to='images',null=True,blank=True)
