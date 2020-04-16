from django.db import models
from django.utils.text import slugify

from imagekit.models import ImageSpecField
from imagekit.processors import ResizeToFill
from watermarks.models import Watermark


class Post(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    description = models.TextField(blank=True, null=True)

    image = models.ImageField(upload_to='post_images')
    image_thumbail = ImageSpecField(source='image', processors=[ResizeToFill(100,50)], format='JPEG', options={'quality': 60})
    body = models.TextField(blank=True, null=True)
    order = models.IntegerField(blank=True, null=True)
    slug = models.SlugField(default='', blank=True)

    def save(self):
        self.slug = slugify(self.title)
        super(Post, self).save()

    def __str__(self):
        return '%s' % self.title

class Photo(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    body = models.TextField(blank=True, null=True)
    image = models.ImageField(upload_to='post_images')



# Create your models here.
