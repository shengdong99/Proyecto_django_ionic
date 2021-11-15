from django.contrib import admin
from .models import Company, Category, MenuElements, OtherElements

admin.site.register(Company)
admin.site.register(Category)
admin.site.register(MenuElements)
admin.site.register(OtherElements)