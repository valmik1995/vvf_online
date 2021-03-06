# Generated by Django 3.0.5 on 2020-06-05 13:58

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Anagrafica',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nome', models.CharField(max_length=32)),
                ('email', models.EmailField(max_length=254)),
            ],
        ),
        migrations.CreateModel(
            name='CittaMetropolitana',
            fields=[
                ('codice_cittametropolitana', models.IntegerField(primary_key=True, serialize=False, verbose_name='codice Istat')),
                ('name', models.CharField(db_index=True, max_length=300, verbose_name='nome')),
            ],
            options={
                'verbose_name': 'città metropolitana',
                'verbose_name_plural': 'città metropolitane',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Comune',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codice_istat', models.IntegerField(db_index=True, unique=True, verbose_name='codice Istat')),
                ('codice_catastale', models.CharField(blank=True, db_index=True, max_length=50, null=True)),
                ('name', models.CharField(db_index=True, max_length=300, verbose_name='nome')),
                ('is_capoluogo', models.BooleanField(default=False, verbose_name='capoluogo')),
                ('altitudine', models.IntegerField(blank=True, null=True)),
                ('superficie', models.FloatField(blank=True, null=True, verbose_name='superficie (kmq)')),
                ('popolazione', models.IntegerField(blank=True, null=True)),
                ('citta_metropolitana', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, to='notizia.CittaMetropolitana')),
            ],
            options={
                'verbose_name': 'comune',
                'verbose_name_plural': 'comuni',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Country',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=120)),
            ],
        ),
        migrations.CreateModel(
            name='Regione',
            fields=[
                ('codice_regione', models.IntegerField(primary_key=True, serialize=False, verbose_name='codice Istat')),
                ('name', models.CharField(db_index=True, max_length=300, verbose_name='nome')),
            ],
            options={
                'verbose_name': 'regione',
                'verbose_name_plural': 'regioni',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Provincia',
            fields=[
                ('codice_provincia', models.IntegerField(primary_key=True, serialize=False, verbose_name='codice Istat')),
                ('name', models.CharField(db_index=True, max_length=300, verbose_name='Nome')),
                ('codice_targa', models.CharField(db_index=True, max_length=2)),
                ('regione', models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='notizia.Regione')),
            ],
            options={
                'verbose_name': 'provincia',
                'verbose_name_plural': 'province',
                'ordering': ['name'],
            },
        ),
        migrations.CreateModel(
            name='Notizia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30)),
                ('description', models.TextField(blank=True, null=True)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
                ('last_modified', models.DateTimeField(auto_now=True)),
                ('citta', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='notizia.Comune')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Notizie',
                'ordering': ['-last_modified'],
            },
        ),
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=30)),
                ('description', models.TextField(blank=True, null=True)),
                ('created_date', models.DateTimeField(auto_now_add=True)),
                ('last_modified', models.DateTimeField(auto_now=True)),
                ('files', models.ImageField(blank=True, null=True, upload_to='images')),
                ('user', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Images',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.FileField(blank=True, null=True, upload_to='images')),
                ('note', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='notizia.Notizia')),
            ],
            options={
                'verbose_name_plural': 'Immagini',
            },
        ),
        migrations.AddField(
            model_name='comune',
            name='provincia',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='notizia.Provincia'),
        ),
    ]
