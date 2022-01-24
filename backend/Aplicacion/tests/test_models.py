from tkinter import Menu
from unicodedata import category
from Aplicacion.models import MenuElements

from unittest import TestCase

class MenuElementTestCase(TestCase):

    def setUp(self):
        self.menuElement = MenuElements.objects.create(
            name='ejemplo1',
            category_id=2
        )

    def test_menuElement_creation(self):
        self.assertEqual(self.menuElement.name, 'ejemplo1')
        self.assertEqual(self.menuElement.category_id, 2)