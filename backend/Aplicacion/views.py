from rest_framework.viewsets import ModelViewSet
from .models import Category, MenuElements, OtherElements
from .serializer import CategorySerializer, MenuElementSerializer, OtherElementsSerializer, UserSerializer
from rest_framework import generics
from django.contrib.auth.models import User
from rest_framework.permissions import AllowAny

class UserCreate(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = (AllowAny,)

class MenuElementViewSet(ModelViewSet):
    serializer_class = MenuElementSerializer
    queryset = MenuElements.objects.all()

class CategoryViewSet(ModelViewSet):
    serializer_class = CategorySerializer
    queryset = Category.objects.all()

class OtherElementsViewSet(ModelViewSet):
    serializer_class = OtherElementsSerializer
    queryset = OtherElements.objects.all()    

