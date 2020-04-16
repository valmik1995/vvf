from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import render, redirect, reverse, get_object_or_404

from form.forms import NameForm
from form.models import Name
from django.contrib import messages

def form_create(request):
    if request.method == 'POST':
        form = NameForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect(reverse('list_form'))
    else:
        form = NameForm()
    return render(request,'form/form.html',{'form': form})


def index(request):
    # Render the HTML template index.html
    return render(request, 'index.html', context=context)

def form_new(request):
    form = NameForm()
    return render(request, 'form/edit.html', {'form': form})


def list(request):
    post = Name.objects.all()
    return render(request, 'form/list.html', {'post': post})


def name_edit(request, pk):
    post = get_object_or_404(Name, pk=pk)
    if request.method == "POST":
        form = NameForm(request.POST, request.FILES, instance=post)
        if form.is_valid():
            post = form.save(commit=False)
            post.save()
            form.save()
            return HttpResponseRedirect(reverse('list_form'))
    else:
        form = NameForm(instance=post)
    return render(request, 'form/edit.html', {'form': form})
