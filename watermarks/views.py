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


def addNotiziaView(request):
    posts = Notizia.objects.all()
    response_data = {}
    form = NotiziaFullForm(request.POST or None, request.FILES or None)
    files = request.FILES.getlist('images')
    if form.is_valid():
        newpost = form.save(commit=False)
        newpost.save()
        file_ = form.cleaned_data['images']
        image_types = ['image/png', 'image/jpg', 'image/jpeg', 'image/gif', 'image/gif']
        if file_.content_type not in image_types:
            data = json.dumps({'errore': 'Formato Immagine non supportato.'})
            return HttpResponse(data, content_type="application/json", status=403)
        user = request.user
        title = form.cleaned_data['title']
        text = form.cleaned_data['text']
        notizia_obj = Notizia.objects.create(user=user,title=title,text=text) #create will create as well as save too in db.
        for f in files:
            Images.objects.create(note=notizia_obj,image=f)
        object = {"title": title, "text": text}
        response_data['title'] = title
        response_data['text'] = text
        return JsonResponse({'message': 'success'})

    return render(request, 'watermarks/uploads/multiple_images.html', {'posts':posts})

class NotiziaListView(ListView):
    model = Notizia
    paginate_by = 100  # if pagination is desired
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['now'] = timezone.now()
        return context

class NotiziaDetailView(DetailView):
    model = Notizia
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['now'] = timezone.now()
        return context

# ajax_posting function
def ajax_posting(request):
    if request.is_ajax():
        first_name = request.POST.get('title', None) # getting data from input first_name id
        last_name = request.POST.get('text', None)  # getting data from input last_name id
        if first_name and last_name: #cheking if first_name and last_name have value
            response = {
                         'msg':'Your form has been submitted successfully' # response message
            }
            return JsonResponse(response) # return response as JSON


# @csrf_exempt
# def get_status(request, task_id):
#     task_result = AsyncResult(task_id)
#     result = {
#         "task_id": task_id,
#         "task_status": task_result.status,
#         "task_result": task_result.result
#     }
#     return JsonResponse(result, status=200)

def clear_database(request):
    for photo in Photo.objects.all():
        photo.file.delete()
        photo.file_watermark.delete()
        photo.delete()

    return redirect(request.POST.get('next'))


def index(request):
    return render(request, 'index.html')

# def test_page(request):
#     try:
#         currentProcess = TaskResult.objects.last()
#         if currentProcess.status == 'PROGRESS':
#             return HttpResponseRedirect(reverse('start_test') + '?job=' + currentProcess.task_id)
#         else:
#             return render(request, 'watermarks/test.html')
#     except:
#         return render(request, 'watermarks/test.html')
#
# def start_test(request):
#     if 'job' in request.GET:
#         job_id = request.GET['job']
#         job = AsyncResult(job_id)
#         data = job.result
#         context = {
#                 'check_status': 1,
#                 'data': "",
#                 'state': 'STARTING...',
#                 'task_id': job_id
# 		}
#         return render(request, 'watermarks/test.html', context)
#     else:
#         job = increment.delay(120)
#         print ("Celery job ID:  {}.".format(job))
#         return HttpResponseRedirect(reverse('watermarks:start_test') + '?job=' + job.id)
#
# def update_status(request):
#     print ("Update on: {}.".format(request.GET))
#     if 'task_id' in request.GET.keys():
#         task_id = request.GET['task_id']
#         task = AsyncResult(task_id)
#         result = task.result
#         status = task.status
#     else:
#         status = 'UNDEFINED!'
#         result = 'UNDEFINED!'
#     try:
#         json_data = {
#             'status': status,
#             'state': result['status'],
#             'iter' : result['iteration']
#             }
#     except TypeError:
#         json_data = {
#             'status': status,
#             'state': 'FINISHED',
#             'iter' : -1
#             }
#     return JsonResponse(json_data)
#
# def abort_test(request):
#     try:
#         currentProcess = TaskResult.objects.last()
#         task_id = currentProcess.task_id
#         app.control.revoke(task_id, terminate=True)
#         return HttpResponseRedirect(reverse('watermarks:start_test') + '?job=' + currentProcess.task_id)
#     except:
#         return HttpResponseRedirect(reverse('watermarks:start_test'))
#
# def get_progress(request, task_id):
#     result = AsyncResult(task_id)
#     response_data = {
#         'state': result.state,
#         'details': result.info,
#     }
#     return HttpResponse(json.dumps(response_data), content_type='application/json')

