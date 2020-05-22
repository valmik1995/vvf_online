from django.shortcuts import render, HttpResponse, redirect
from django.http import HttpResponseRedirect, JsonResponse
from django.urls import reverse
from django.views import View
from django.views.decorators.csrf import csrf_exempt
from project.celery import app
from django_celery_results.models import TaskResult
from celery.result import AsyncResult
from .tasks import increment, photo_watermark
from .forms import PhotoForm
from .models import Photo

import json
import pdb


class BasicUploadView(View):
    def get(self, request):
        photos_list = Photo.objects.all()
        return render(self.request, 'watermarks/uploads/uploads.html', {'photos': photos_list})

    def post(self, request):
        form = PhotoForm(self.request.POST, self.request.FILES)
        if form.is_valid():
            photo = form.save()
            image_watermark = photo_watermark.delay()
            data = {'is_valid': True,
                'name': photo.file.name,
                'url': photo.file.url,
                'task_id': image_watermark.id,
                'task_status': image_watermark.id }

        else:
            data = {'is_valid': False}
        return JsonResponse(data)

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




def clear_database(request):
    for photo in Photo.objects.all():
        photo.file.delete()
        photo.file_watermark.delete()
        photo.delete()

    return redirect(request.POST.get('next'))


def index(request):
    return render(request, 'index.html')
