
from rest_framework.viewsets import ModelViewSet
from .models import Category, MenuElements, OtherElements
from .serializer import CategorySerializer, MenuElementSerializer, OtherElementsSerializer


class MenuElementViewSet(ModelViewSet):
    serializer_class = MenuElementSerializer
    queryset = MenuElements.objects.all()

class CategoryViewSet(ModelViewSet):
    serializer_class = CategorySerializer
    queryset = Category.objects.all()

class OtherElementsViewSet(ModelViewSet):
    serializer_class = OtherElementsSerializer
    queryset = OtherElements.objects.all()    

