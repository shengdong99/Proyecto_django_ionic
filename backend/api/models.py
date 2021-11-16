from django.db import models
from django.db.models.deletion import CASCADE

class Company(models.Model):
    name= models.CharField(max_length=50)
    website= models.URLField(max_length=100)
    foundation = models.PositiveIntegerField()

class Category(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class MenuElements(models.Model):
    image = models.ImageField(null=False, blank=False)
    name = models.CharField(max_length=200)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.name

class OtherElements(models.Model):
    link = models.URLField(max_length=500)
    menuElements = models.OneToOneField(MenuElements, on_delete=CASCADE)
    
    def __str__(self):
        return self.name


class Products(models.Model):
    image = models.ImageField(null=False, blank=False)
    title = models.CharField(max_length=200, null=False, blank=False)
    description = models.TextField()
    price = models.DecimalField(max_digits=5, decimal_places=2)

    def __str__(self):
        return self.name

class CreatePage(models.Model):
    title = models.CharField(max_length=200, null=False, blank=False)
    image = models.ImageField(null=False, blank=False)
    description = models.TextField()

    def __str__(self):
        return self.name
