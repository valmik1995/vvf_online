from django.contrib import admin
from .models import Storia, StoriaFile, StoriaVideoFile

class StoriaFileInline(admin.TabularInline):
    model = StoriaFile


class StoriaVideoFileInline(admin.TabularInline):
    model = StoriaVideoFile

class StoriaAdmin(admin.ModelAdmin):
    inlines = [
        StoriaFileInline,
        StoriaVideoFileInline,
    ]

admin.site.register(Storia, StoriaAdmin)
