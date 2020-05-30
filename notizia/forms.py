from django import forms
from .models import Notizia, News

class NotiziaForm(forms.ModelForm):
    class Meta:
        model = Notizia
        fields = ['title','description'] #make sure to mention field here, if nothing is mentioned then all will be required.

class NotiziaFullForm(NotiziaForm): #extending form
    images = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))

    class Meta(NotiziaForm.Meta):
        fields = NotiziaForm.Meta.fields + ['images',]


class NewsForm(forms.ModelForm):
    files = forms.FileField(widget=forms.ClearableFileInput(attrs={'multiple': True}))

    class Meta:
        model = News
        fields = ['title','description','files']
