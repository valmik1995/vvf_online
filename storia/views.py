from django.shortcuts import render

from .models import StoriaFile

def create_to_storia(request):
    user = request.user
    if request.method == 'POST':
        form = StoriaModelForm(request.POST)
        file_form = StoriaModelForm(request.POST, request.FILES)
        files = request.FILES.getlist('file') #field name in model
        if form.is_valid() and file_form.is_valid():
            storia_instance = form.save(commit=False)
            storia_instance.user = user
            storia_instance.save()
            for f in files:
                storia_instance = StoriaFile(file=f, storia=storia_instance)
                file_instance.save()
    else:
        form = StoriaModelForm()
        file_form = StoriaModelForm()


class StoriaCreateView(CreateView):
    def get(self, request, *args, **kwargs):
        context = {'form': StoriaModelForm()}
        return render(request, 'storia/storia_form.html', context)

    def post(self, request, *args, **kwargs):
        form = StoriaModelForm(request.POST or None, request.FILES or None)
        files = request.FILES.getlist('images')
        video = request.FILES.getlist('video')
        if form.is_valid():
            storia = form.save(commit=False)
            storia.user = request.user
            storia.save()
            for f in files:
                storia = StoriaFile(file=f, storia=storia_instance)
                file.save()

            for v in video:
                storia = StoriaVideoFile(file=f, storia=storia_instance)
                file.save()

            return HttpResponseRedirect(reverse_lazy('storia:storia_detail', args=[storia.id]))
        return render(request, 'storia/storia_form.html', {'form': form})
