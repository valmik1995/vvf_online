from django.urls import path
from .views import VideoCreateView, VideoDetailView, VideoListView, VideoUpdateView, VideoDeleteView

app_name = 'video'
urlpatterns = [
    path('list/', VideoListView.as_view(), name='video-list'),
    path('create/', VideoCreateView.as_view(), name='video-create'),
    path('<int:id>/', VideoDetailView.as_view(), name='video-detail'),
    path('<int:id>/update/', VideoUpdateView.as_view(), name='video-update'),
    path('<int:id>/delete/', VideoDeleteView.as_view(), name='video-delete'),
]
