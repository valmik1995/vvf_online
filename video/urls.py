from django.conf.urls import url
from django.urls import path
from .views import VideoCreateView, VideoDetailView, VideoListView, VideoUpdateView, video_delete_view, GetTaskInfo
from . import views

app_name = 'video'
urlpatterns = [
    path('list/', VideoListView.as_view(), name='video-list'),
    path('create/', VideoCreateView.as_view(), name='video-create'),
    path('<int:id>/', VideoDetailView.as_view(), name='video-detail'),
    path('<int:id>/update/', VideoUpdateView.as_view(), name='video-update'),
    path('<int:id>/delete/', video_delete_view, name='video-delete'),
    path('get-task-info/', GetTaskInfo, name='video_get_task_info'),
    # url(r'^caricamento/get-task-info/$', views.GetTaskInfo, name="get_task_info"),
]
