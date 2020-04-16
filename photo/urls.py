from django.urls import path
from photo.views import detail, list, photo_edit

urlpatterns = [
    path('<pk>/', detail, name='photo_detail'),
    path('', list, name='list'),
    path('edit/<title>', photo_edit, name='photo_edit'),
    ]
