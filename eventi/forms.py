from django import forms
from notizia.models import RelatedImage, Eventi, EventiImage


class EventiForm(forms.ModelForm):
    image = forms.ModelChoiceField(
        queryset=RelatedImage.objects.all(),
        required=False)

    class Meta:
    fields = ('title', 'description')

    def __init__(self, *args, **kwargs):
        super(EventiForm, self).__init__(*args, **kwargs)
        if self.instance.pk:
            self.fields['image'].initial = models.RelatedImage.objects
                .get(surveyimage__survey=self.instance)
                .values_list('id', flat=True)

    def save(self, commit=True):
        super(EventiForm, self).save(commit)
        image = self.cleaned_data.pop('image', None)
        if image:
            self.instance.surveyimage.delete()
            models.EventiImage.objects
                .create(survey=self.instance, image=image)
