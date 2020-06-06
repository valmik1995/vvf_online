from django.contrib import admin
from .models import Notizia, Images
from . import forms


@admin.register(Notizia)
class NotiziaAdmin(admin.ModelAdmin):
    fields = ['title', 'description', 'comune']
    list_display = ("title", "comune", "user_id")


@admin.register(Images)
class ImagesAdmin(admin.ModelAdmin):
    list_display = ("note_id", "image")


# class NotiziaInline(admin.TabularInline):
#     model = Notizia
#
# class ImagesAdmin(admin.ModelAdmin):
#     inlines = [
#         NotiziaInline,
#     ]

# @admin.register(models.Notizia)
# class NotiziaAdmin(admin.ModelAdmin):
#     form = forms.NotiziaFullForm
#
#
# @admin.register(models.Country)
# class CountryAdmin(admin.ModelAdmin):
#     model = models.Country
