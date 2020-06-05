from dal import autocomplete
from django import forms
from notizia.models import Notizia, News, Anagrafica, Country
from .validators import MimetypeValidator

class NotiziaForm(forms.ModelForm):
    class Meta:
        model = Notizia
        fields = ['title','description','citta'] #make sure to mention field here, if nothing is mentioned then all will be required.


class NotiziaFullForm(NotiziaForm): #extending form
    images = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}), validators=[MimetypeValidator('application/pdf')],
        help_text="Upload a PDF file")
    widgets = {
        'citta': autocomplete.ModelSelect2(url='comune-autocomplete',
        attrs={
            'theme': 'bootstrap'
        })
    }

    class Meta(NotiziaForm.Meta):
        fields = NotiziaForm.Meta.fields + ['images',]


class NewsForm(forms.ModelForm):
    files = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))

    class Meta:
        model = News
        fields = ['title','description','files']

class AnagraficaForm(forms.ModelForm):

    class Meta:
        model = Anagrafica
        fields = ('__all__')
