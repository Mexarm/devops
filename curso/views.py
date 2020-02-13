from django.shortcuts import render
from django.views.generic import ListView

# Create your views here.
from .models import Category

class AllCategory(ListView):
  """Views"""
  template_name = "category.html.j2"
  context_object_name = "categorys"
  model = Category