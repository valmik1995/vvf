from django.urls import path

from .views import name_edit, form_create, list

urlpatterns = [
    path('', form_create, name='form_create'),
    path('list', list, name='list_form'),
    path('edit/<pk>', name_edit, name='edit'),
]
