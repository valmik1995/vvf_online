from django.contrib import admin
from .models import Storia, StoriaFile

class StoriaFileInline(admin.TabularInline):
    model = StoriaFile

class StoriaAdmin(admin.ModelAdmin):
    inlines = [
        StoriaFileInline,
    ]

admin.site.register(Storia, StoriaAdmin)
