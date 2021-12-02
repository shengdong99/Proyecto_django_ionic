from django.db import models
from django.db.models.deletion import CASCADE


class Category(models.Model):
    name = models.CharField(max_length=100)
    category_image = models.ImageField(upload_to='assets/category/',null=False, blank=False, default='')

    def __str__(self):
        return self.name

class MenuElements(models.Model):
    file_field = models.FileField(upload_to='assets/img/',null=False, blank=False, default='')
    name = models.CharField(max_length=200)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    create_date = models.DateTimeField(auto_now_add=False, editable=True, null=True)
    finish_date = models.DateTimeField(auto_now_add=False, editable=True, null=True)
    
    def __str__(self):
        return self.name


class OtherElements(models.Model):
    link = models.URLField(max_length=500)
    menuElements = models.OneToOneField(MenuElements, on_delete=CASCADE)
    
    def __str__(self):
        return self.name


