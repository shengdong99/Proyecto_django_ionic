from django.contrib import admin
from .models import Category, MenuElements, OtherElements

admin.site.register(Category)
admin.site.register(OtherElements)
admin.site.register(MenuElements)