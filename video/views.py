import json
from django.views.generic import View, DetailView, ListView, UpdateView, DeleteView
from django.urls import reverse_lazy, reverse
from django.shortcuts import render, redirect, get_object_or_404
from .forms import VideoForm
from .models import Video
from .tasks import watermark

from celery.result import AsyncResult
from django.http import HttpResponseRedirect, JsonResponse, HttpResponse

class VideoCreateView(View):

    form_class = VideoForm
    success_url = reverse_lazy('video:video-list')
    template_name = 'video/progress.html'

    def get(self, request, *args, **kwargs):
        form = self.form_class()
        return render(request, self.template_name, {'form': form})

    def post(self, request, *args, **kwargs):
        cntx = {}
        form = self.form_class(request.POST, request.FILES)
        if form.is_valid():
            newpost = form.save(commit=False)
            newpost.save()
            form.save()
            video = watermark.delay(newpost.pk)
            cntx['task_id'] = video.id
            return render(request, 'video/progress.html', cntx)
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
    queryset = Video.objects.all().order_by('-id').reverse() # <blog>/<modelname>_list.html

class VideoUpdateView(UpdateView):
    template_name = 'video/progress.html'
    form_class = VideoForm

    def get_object(self):
        id_ = self.kwargs.get("id")
        return get_object_or_404(Video, id=id_)

    def form_valid(self, form):
        print(form.cleaned_data)
        return super().form_valid(form)

# class VideoDeleteView(DeleteView):
#     template_name = 'video/video_delete.html'
#
#     def get_object(self):
#         id_ = self.kwargs.get("id")
#         return get_object_or_404(Video, id=id_)
#
#     def get_success_url(self):
#         return reverse('video:video-list')

def GetTaskInfo(request):
    task_id = request.GET.get('task_id', None)
    if task_id is not None:
        task = AsyncResult(task_id)
        data = {
            'state': task.state,
            'result': task.result,
        }
        return HttpResponse(json.dumps(data), content_type='application/json')
    else:
        return HttpResponse('No job id given.')


def video_delete_view(request, id):
    obj = get_object_or_404(Video, id=id)
    if request.method == "POST":
        obj.video.delete()
        obj.video_720.delete()
        obj.delete()
        return redirect('../../list')
    context = {
    "object": obj
    }
    return render(request, "video/video_delete.html", context)
