from django.conf.urls import url
from django.urls import path
from . import views


app_name = 'watermarks'

urlpatterns= [
    url(r'^$', views.index, name="index"),
    # url(r'^test_page/$', views.test_page, name="test_page"),
    # url(r'^start_test/$', views.start_test, name="start_test"),
    # url(r'^[\s\S]*/update_status/$', views.update_status, name='update_status'),
    # url(r'^abort_test/$', views.abort_test, name="abort_test"),
]

urlpatterns += [
    url(r'^basic-upload/$', views.BasicUploadView.as_view(), name='basic_upload'),
    url(r'^clear/$', views.clear_database, name='clear_database'),
    # path("basic-upload/<task_id>/", get_status, name="get_status"),
    path('get-task-info/', GetTaskInfo, name='video_get_task_info'),
    path('notizia/add-notizia/', addNotiziaView, name='add_notizia'),
    # path("basic-upload/<task_id>/", get_status, name="get_status"),
    path('notizia/list/', NotiziaListView.as_view(), name='notizia_list'),
    path('notizia/<int:pk>', NotiziaDetailView.as_view(), name='notizia_detail'),
    path('notizia/ajax-posting/', ajax_posting, name='ajax_posting'),
]

urlpatterns += [
    # other url configs here here...
    # url(r'^(?P<task_id>[\w-]+)/$', views.get_progress, name='task_status')
]

