from django.conf.urls import url
from django.urls import path, re_path, include
from . import views
from .views import *
from rest_framework import routers

router = routers.DefaultRouter()
router.register('notizia', views.NotiziaView)

app_name = 'notizia'

urlpatterns = [
    path('rest-framework/', include(router.urls)),
    path('create/', NotiziaCreateView.as_view(), name='notizia_create'),
    path('list/', NotiziaListView.as_view(), name='notizia_list'),
    path('<regione>', NotiziaListViewRegione.as_view(), name='notizia_list_regione'),
    path('<regione>/<provincia>', NotiziaListViewProvincia.as_view(), name='notizia_list_provincia'),
    path('<regione>/<provincia>/<comune>', NotiziaListViewComune.as_view(), name='notizia_list_comune'),
    # re_path(r'^/(?P<comune>\w+)/', NotiziaListViewComune.as_view(), name='notizia_list_comune'),
    path('<int:pk>/', NotiziaDetailView.as_view(), name='notizia_detail'),
    path('<int:pk>/update/', NotiziaUpdateView.as_view(), name='notizia_update'),
    # path('<int:pk>/delete/', notizia_delete_view, name='notizia_delete'),
    path('<int:pk>/delete/', ImagesDeleteView, name='images_delete'),
    path('ajax-posting/', ajax_posting, name='ajax_posting'),
    # path('citta/', CountryAutocompleteView.as_view(), name='citta-autocomplete'),
    path('comune/', ComuneAutocomplete.as_view(), name='comune-autocomplete'),
    # path('regione/', RegioneAutocomplete.as_view(), name='regione-autocomplete'),
    # path('cittametropolitana/', CittaMetropolitanaAutocomplete.as_view(),name='cittametropolitana-autocomplete',),

    # path('my_ajax_request/', requestAjax, name='my_ajax_request'),
    # path('more-todo', more_todo, name='more_todo'),
    # path('add-todo', add_todo, name='add_todo'),
    # path('ajax-notizia', addNotiziaView, name='ajax-notizia'),
    # path('', HomePageView.as_view(), name='home'),
]
