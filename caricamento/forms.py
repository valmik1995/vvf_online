from django.forms import ModelForm
from django import forms
from caricamento.models import Caricamento

class CaricamentoForm(ModelForm):
    class Meta:
        model = Caricamento
        fields = ['photos',]

class FileFieldForm(forms.Form):
    file_field = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))

class SharingForm(forms.Form):
    video = forms.FileField()
    photo = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))
