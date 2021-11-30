
from rest_framework.viewsets import ModelViewSet
from .models import Category, MenuElements
from .serializer import CategorySerializer, MenuElementSerializer


class MenuElementViewSet(ModelViewSet):
    serializer_class = MenuElementSerializer
    queryset = MenuElements.objects.all()

class CategoryViewSet(ModelViewSet):
    serializer_class = CategorySerializer
    queryset = Category.objects.all()

    # @detail_route(methods=['post'])
    # def upload_docs(request):
    #     try:
    #         file = request.data['file']
    #     except KeyError:
    #         raise ParseError('Request has no resource file attached')
    #     menuElement = MenuElements.objects.create(image=file)

