from __future__ import absolute_import, unicode_literals

from django.db import models


class Widget(models.Model):
    title = models.CharField(max_length=140)

class Name(models.Model):
    name = models.CharField(max_length=140)
    image = models.ImageField(upload_to='post_images/')
