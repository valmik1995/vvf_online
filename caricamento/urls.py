from django.conf.urls import url
from django.urls import path, include
from . import views

app_name = 'caricamento'

urlpatterns= [
    url(r'^caricamento/uploads/$', views.CaricamentoFiles, name="uploads_files"),
    path('caricamento/files/',views.FileFieldView.as_view(),name='upload_files'),
    url(r'^caricamento/get-task-info/$', views.GetTaskInfo, name="get_task_info"),
    url(r'^caricamento/index/$', views.Index, name="upload_index"),
]
