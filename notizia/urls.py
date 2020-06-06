from django.conf.urls import url
from django.urls import path
from . import views
from .views import *



app_name = 'notizia'

urlpatterns = [
    path('create/', NotiziaCreateView.as_view(), name='notizia_create'),
    path('list/', NotiziaListView.as_view(), name='notizia_list'),
    path('<int:pk>/', NotiziaDetailView.as_view(), name='notizia_detail'),
    path('<int:pk>/update/', views.notizia_update, name='notizia_update'),
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
