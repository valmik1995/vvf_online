from django.views.generic import View, DetailView, ListView, UpdateView, DeleteView
from django.urls import reverse_lazy, reverse
from django.shortcuts import render, redirect, get_object_or_404
from .forms import VideoForm
from .models import Video

class VideoCreateView(View):
    form_class = VideoForm
    success_url = reverse_lazy('video:video-detail')
    template_name = 'video/video_create.html'

    def get(self, request, *args, **kwargs):
        form = self.form_class()
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        form = self.form_class(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect(self.success_url)
        else:
            return render(request, self.template_name, {'form': form})

class VideoDetailView(DetailView):
    template_name = 'video/video_detail.html'
    #queryset = Article.objects.all()

    def get_object(self):
        id_ = self.kwargs.get("id")
        return get_object_or_404(Video, id=id_)

class VideoListView(ListView):
    template_name = 'video/video_list.html'
    queryset = Video.objects.all() # <blog>/<modelname>_list.html

class VideoUpdateView(UpdateView):
    template_name = 'video/video_create.html'
    form_class = VideoForm

    def get_object(self):
        id_ = self.kwargs.get("id")
        return get_object_or_404(Video, id=id_)

    def form_valid(self, form):
        print(form.cleaned_data)
        return super().form_valid(form)

class VideoDeleteView(DeleteView):
    template_name = 'video/video_delete.html'

    def get_object(self):
        id_ = self.kwargs.get("id")
        return get_object_or_404(Video, id=id_)

    def get_success_url(self):
        return reverse('video:video-list')
