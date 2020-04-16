from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import render, redirect, reverse, get_object_or_404

from photo.models import Post
from photo.forms import PostForm

from watermarks.models import WatermarkImage

# from django.contrib import messages

def photo_edit(request, title):
    post = get_object_or_404(Post, title=title)
    if request.method == "POST":
        form = PostForm(request.POST, request.FILES, instance=post)
        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            form.save()
            return HttpResponseRedirect(reverse('list_form'))
    else:
        form = PostForm(instance=post)
    return render(request, 'photo/edit.html', {'form': form})


def list(request):
    post = Post.objects.all()
    return render(request, 'photo/list.html', {'post': post})

def detail(request, pk=None):
    post = get_object_or_404(Post, pk=pk)
    return render(request, 'photo/photo.html', {'post': post})
