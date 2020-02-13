from django.db import models

class Category(models.Model):
  """ Category"""
  name = models.CharField(max_length=40)
  slug = models.CharField(max_length=60)

  def __str__(self):
    return self.name