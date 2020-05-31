from django.contrib import admin
from . import models
from . import forms


@admin.register(models.Anagrafica)
class AnagraficaAdmin(admin.ModelAdmin):
    form = forms.AnagraficaForm

@admin.register(models.Notizia)
class NotiziaAdmin(admin.ModelAdmin):
    form = forms.NotiziaFullForm
