# importer le chemin 
from django.urls import path

from . import views

urlpatterns = [
    path('',views.index),
    path('statistique',views.stat),
]
