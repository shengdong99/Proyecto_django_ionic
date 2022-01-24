
from django.contrib.auth.models import User

from unittest import TestCase


class UsuarioTestCase(TestCase):

    def setUp(self):
        self.user = User.objects.create(
            username='test_user',
            email="asdasdas@gmail.com",
            password='12345678',
            is_staff=False
        )

    def test_user_creation(self):
        self.assertEqual(self.user.is_active, True)
        self.assertEqual(self.user.is_staff, False)
        self.assertEqual(self.user.is_superuser, False)