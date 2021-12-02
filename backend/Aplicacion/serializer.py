from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import Category, MenuElements, OtherElements

class MenuElementSerializer(ModelSerializer):
    file_field = serializers.FileField(max_length=None, use_url=True)

    class Meta :
        model = MenuElements
        fields = '__all__'

class CategorySerializer(ModelSerializer):
    image_field = serializers.ImageField(max_length=None, use_url=True)
    
    class Meta :
        model = Category
        fields = '__all__'

class OtherElementsSerializer(ModelSerializer):

    class Meta :
        model = OtherElements
        fields = '__all__'