# modify urls.py
from rest_framework.routers import DefaultRouter
from .ajax_views import RelatedImageAJAXView

ajax_router = DefaultRouter()
ajax_router.register(r'', RelatedImageAJAXView)



urlpatterns = [
    url(r'^related_images/', include(ajax_router.urls)),
]
