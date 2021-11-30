from django.db import models
from django.db.models.deletion import CASCADE

class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class MenuElements(models.Model):
    image = models.ImageField(upload_to='assets/',null=False, blank=False)
    name = models.CharField(max_length=200)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.name

class OtherElements(models.Model):
    link = models.URLField(max_length=500)
    menuElements = models.OneToOneField(MenuElements, on_delete=CASCADE)
    
    def __str__(self):
        return self.name


