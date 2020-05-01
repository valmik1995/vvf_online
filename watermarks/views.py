from django.shortcuts import render, HttpResponse, redirect
from django.http import HttpResponseRedirect, JsonResponse
from django.urls import reverse
from django.views import View

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
            data = {'is_valid': True, 'name': photo.file.name, 'url': photo.file.url}
            image_watermark = photo_watermark.delay()
        else:
            data = {'is_valid': False}
        return JsonResponse(data)

def clear_database(request):
    for photo in Photo.objects.all():
        photo.file.delete()
        photo.delete()
    return redirect(request.POST.get('next'))


def index(request):
    return render(request, 'index.html')

def test_page(request):
    try:
        currentProcess = TaskResult.objects.last()
        if currentProcess.status == 'PROGRESS':
            return HttpResponseRedirect(reverse('start_test') + '?job=' + currentProcess.task_id)
        else:
            return render(request, 'watermarks/test.html')
    except:
        return render(request, 'watermarks/test.html')

def start_test(request):
    if 'job' in request.GET:
        job_id = request.GET['job']
        job = AsyncResult(job_id)
        data = job.result
        context = {
                'check_status': 1,
                'data': "",
                'state': 'STARTING...',
                'task_id': job_id
		}
        return render(request, 'watermarks/test.html', context)
    else:
        job = increment.delay(120)
        print ("Celery job ID:  {}.".format(job))
        return HttpResponseRedirect(reverse('watermarks:start_test') + '?job=' + job.id)

def update_status(request):
    print ("Update on: {}.".format(request.GET))
    if 'task_id' in request.GET.keys():
        task_id = request.GET['task_id']
        task = AsyncResult(task_id)
        result = task.result
        status = task.status
    else:
        status = 'UNDEFINED!'
        result = 'UNDEFINED!'
    try:
        json_data = {
            'status': status,
            'state': result['status'],
            'iter' : result['iteration']
            }
    except TypeError:
        json_data = {
            'status': status,
            'state': 'FINISHED',
            'iter' : -1
            }
    return JsonResponse(json_data)

def abort_test(request):
    try:
        currentProcess = TaskResult.objects.last()
        task_id = currentProcess.task_id
        app.control.revoke(task_id, terminate=True)
        return HttpResponseRedirect(reverse('watermarks:start_test') + '?job=' + currentProcess.task_id)
    except:
        return HttpResponseRedirect(reverse('watermarks:start_test'))
