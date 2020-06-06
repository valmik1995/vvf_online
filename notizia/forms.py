from dal import autocomplete
from django import forms
from notizia.models import Notizia, News, Country
from notizia.validators import FileMimeValidator, FileMimeValidatorVideo


class NotiziaForm(forms.ModelForm):
    class Meta:
        model = Notizia
        fields = ['title','description','comune'] #make sure to mention field here, if nothing is mentioned then all will be required.


class NotiziaFullForm(NotiziaForm): #extending form
    images = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}), validators=[
            FileMimeValidator()
        ])
    video = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}), validators=[
            FileMimeValidatorVideo()
        ], required=False)
    widgets = {
        'comune': autocomplete.ModelSelect2(url='comune-autocomplete',
        attrs={
            'theme': 'bootstrap'
        })
    }

    class Meta(NotiziaForm.Meta):
        fields = NotiziaForm.Meta.fields + ['images',] + ['video',]


class NewsForm(forms.ModelForm):
    files = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))

    class Meta:
        model = News
        fields = ['title','description','files']
