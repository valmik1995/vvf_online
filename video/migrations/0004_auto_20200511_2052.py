# Generated by Django 3.0.5 on 2020-05-11 20:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('video', '0003_auto_20200511_0250'),
    ]

    operations = [
        migrations.AddField(
            model_name='video',
            name='codino',
            field=models.CharField(choices=[('SENZA', 'Senza'), ('CODIN', 'Codino')], default='CODIN', max_length=5),
        ),
        migrations.AddField(
            model_name='video',
            name='posizione',
            field=models.CharField(choices=[('VERT', 'Verticale'), ('ORIZ', 'Orizzontale')], default='ORIZ', max_length=4),
        ),
        migrations.AlterField(
            model_name='video',
            name='formato',
            field=models.CharField(choices=[('640', '640'), ('1280', '720'), ('1920', '1080')], default=1280, max_length=4),
        ),
    ]