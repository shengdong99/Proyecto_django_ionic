# Generated by Django 3.2.9 on 2021-12-02 19:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Aplicacion', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='menuelements',
            name='file_field',
            field=models.FileField(default='', upload_to='assets/file/'),
        ),
    ]
