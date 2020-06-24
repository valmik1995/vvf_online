from django.conf.urls import url
from django.urls import path, re_path, include
from rest_framework.routers import DefaultRouter
from .ajax_views import RelatedImageAJAXView
from .views import EventiImageList, MyUploadView, FileUploadView

ajax_router = DefaultRouter()
ajax_router.register(r'', RelatedImageAJAXView)


urlpatterns = [
    url(r'^related_images/', include(ajax_router.urls)),
    url(r'api/', EventiImageList.as_view()),
    path('upload/', MyUploadView.as_view()),
    path('myupload/', FileUploadView.as_view())
]
