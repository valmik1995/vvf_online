from django.urls import include, path
from django.conf.urls import url
from watermarks.views import index, test_page, update_status, abort_test, start_test

urlpatterns = [
    path('index/', index, name='index'),
    path('test_page/', test_page, name="test_page"),
    path('start_test/', start_test, name="start_test"),
    path('update/', update_status, name='update_status'),
    path('abort_test/', abort_test, name="abort_test"),
]
