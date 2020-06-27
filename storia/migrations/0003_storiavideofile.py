# Generated by Django 3.0.7 on 2020-06-27 09:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('storia', '0002_storiafile_title'),
    ]

    operations = [
        migrations.CreateModel(
            name='StoriaVideoFile',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30, null=True)),
                ('file', models.FileField(upload_to='storia/video/%Y/%m/%d')),
                ('storia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='storia.Storia')),
            ],
        ),
    ]
