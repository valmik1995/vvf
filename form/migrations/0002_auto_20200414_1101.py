# Generated by Django 3.0.5 on 2020-04-14 11:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('form', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Name',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=140)),
            ],
        ),
        migrations.RenameField(
            model_name='widget',
            old_name='name',
            new_name='title',
        ),
    ]
