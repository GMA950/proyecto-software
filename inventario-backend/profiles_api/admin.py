from django.contrib import admin
from profiles_api import models


# Register your models here.

admin.site.register(models.UserProfile) # con esto le damos permiso al administrador para que pueda editar  models.py de profiles_api