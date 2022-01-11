from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import Category, MenuElements, OtherElements
from django.contrib.auth.models import User


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('username', 'password', 'email', 'is_staff')
        extra_kwargs = {'password': {'write_only': True}}

    def create(self, validated_data):
        password = validated_data.pop('password')
        user = User(**validated_data)
        user.set_password(password)
        user.save()
        return {
            "username": user.username,
            "email": user.email,
            "is_staff":user.is_staff
        }

class MenuElementSerializer(ModelSerializer):
    file_field = serializers.FileField(max_length=None, use_url=True)

    class Meta :
        model = MenuElements
        fields = '__all__'

class CategorySerializer(ModelSerializer):

    
    class Meta :
        model = Category
        fields = '__all__'

class OtherElementsSerializer(ModelSerializer):

    class Meta :
        model = OtherElements
        fields = '__all__'