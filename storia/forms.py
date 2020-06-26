from django.forms import ClearableFileInput

class StoriaModelForm(forms.ModelForm):
    class Meta:
        model = Storia
        fields = ['text']

class StoriaFileModelForm(forms.ModelForm):
    class Meta:
        model = StoriaFile
        fields = ['file']
        widgets = {
            'file': ClearableFileInput(attrs={'multiple': True}),
        }
