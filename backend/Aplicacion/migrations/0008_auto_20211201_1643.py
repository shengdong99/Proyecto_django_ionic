# Generated by Django 3.2.9 on 2021-12-01 16:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Aplicacion', '0007_alter_menuelements_image'),
    ]

    operations = [
        migrations.AddField(
            model_name='menuelements',
            name='create_date',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
        migrations.AddField(
            model_name='menuelements',
            name='finish_date',
            field=models.DateTimeField(auto_now_add=True, null=True),
        ),
    ]
