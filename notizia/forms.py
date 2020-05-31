from dal import autocomplete
from django import forms
from .models import Notizia, News, Anagrafica

class NotiziaForm(forms.ModelForm):
    class Meta:
        model = Notizia
        fields = ['title','description','citta'] #make sure to mention field here, if nothing is mentioned then all will be required.


class NotiziaFullForm(NotiziaForm): #extending form
    images = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))

    class Meta(NotiziaForm.Meta):
        fields = NotiziaForm.Meta.fields + ['images',]
        widgets = {'comune': autocomplete.ModelSelect2Multiple(url='comune-autocomplete')}

class NewsForm(forms.ModelForm):
    files = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))

    class Meta:
        model = News
        fields = ['title','description','files']

class AnagraficaForm(forms.ModelForm):

    class Meta:
        model = Anagrafica
        fields = ('__all__')
        widgets = {
            'comune': autocomplete.ModelSelect2Multiple(
                url='comune-autocomplete'
            )
        }
