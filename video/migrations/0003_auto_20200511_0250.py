# Generated by Django 3.0.5 on 2020-05-11 02:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('video', '0002_video_formato'),
    ]

    operations = [
        migrations.AlterField(
            model_name='video',
            name='formato',
            field=models.CharField(choices=[('640', '640'), ('1280', '720'), ('1920', '1080')], default=720, max_length=4),
        ),
    ]
