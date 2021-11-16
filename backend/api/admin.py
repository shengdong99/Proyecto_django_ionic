from django.contrib import admin
from .models import Company, Category, CreatePage, MenuElements, OtherElements, Products

admin.site.register(Company)
admin.site.register(Category)
admin.site.register(MenuElements)
admin.site.register(OtherElements)
admin.site.register(Products)
admin.site.register(CreatePage)