# Generated by Django 3.0.7 on 2020-06-16 09:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('notizia', '0005_auto_20200606_0436'),
    ]

    operations = [
        migrations.AddField(
            model_name='notizia',
            name='slug',
            field=models.SlugField(blank=True, max_length=250, null=True),
        ),
    ]
