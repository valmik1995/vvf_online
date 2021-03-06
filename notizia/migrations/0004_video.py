# Generated by Django 3.0.5 on 2020-06-05 16:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('notizia', '0003_auto_20200605_1508'),
    ]

    operations = [
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('video', models.FileField(blank=True, null=True, upload_to='video')),
                ('note', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='notizia.Notizia')),
            ],
            options={
                'verbose_name_plural': 'Video',
            },
        ),
    ]
