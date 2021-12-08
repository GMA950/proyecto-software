from django.db import models
from django.contrib.auth.models import AbstractBaseUser # Clase basica de usuario de django
from django.contrib.auth.models import PermissionsMixin
from django.contrib.auth.models import BaseUserManager

# Create your models here.

class UserProfileManager(BaseUserManager):
    ''' Manager para Perfiles de Usuario custom'''

    def create_user(self, email, username, name, password=None):
        '''crear Nuevo usuario'''
        if not email:
            raise ValueError('Usuario debe tener un Email')
        email = self.normalize_email(email)
        user = self.model(email=email,username=username ,name=name)

        user.set_password(password)
        user.save(using=self._db)

        return user

    def create_superuser(self, email,username, name, password):
        user = self.create_user(email,username, name, password)

        user.is_superuser = True #se especifica automaticamente cuando tenemos permissionsMixin
        user.is_staff = True
        user.save(using=self.db)


class UserProfile(AbstractBaseUser, PermissionsMixin):
    """" Modelo Base de Datos para Usuarios en el sistema"""
    email = models.EmailField(max_length=255, unique=True)
    username = models.CharField( max_length=50, unique = True)
    name = models.CharField(max_length=255)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)

    objects = UserProfileManager()


    
    USERNAME_FIELD = 'username'
    EMAIL_FIELD = 'email'
    REQUIRED_FIELDS = ['name', 'email']

    def get_full_name(self):
        ''' Obtener Nombre Completo del usuario'''
        return self.name

    def get_short_name(self):
        ''' Obtener Nombre Corto del usuario'''
        return self.name

    def __str__(self):
        ''' Retornar String representando nuestor usuario '''
        return self.username