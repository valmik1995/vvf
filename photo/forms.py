from django import forms
from .models import Post, Photo

class PostForm(forms.Form):
    model = Post
    fields = ['title', 'body', 'image']

class PhotoForm(forms.Form):
    model = Photo
    fields = ['title', 'body', 'image']
