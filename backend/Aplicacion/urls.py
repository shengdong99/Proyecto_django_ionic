# from rest_framework import settings, urlpatterns
from django.contrib.auth.models import User
from rest_framework.routers import DefaultRouter
from .views import CategoryViewSet, MenuElementViewSet, OtherElementsViewSet, UserCreate

from django.conf.urls.static import static
from django.conf import settings
from django.urls import path, include

router = DefaultRouter()
router.register('menuElement', MenuElementViewSet)
router.register('category', CategoryViewSet)
router.register('otherElements', OtherElementsViewSet)
router.register('auth',UserCreate)


urlpatterns = [
    path('api/', include(router.urls)),
]+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)