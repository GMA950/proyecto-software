from django.db import models
#from django.contrib.auth.models import User
#from profiles_api.models import UserProfile
from django.conf import settings

class Product(models.Model):
    code = models.CharField(unique = True, max_length=10, db_index=True)
    name = models.CharField(max_length=100, db_index=True)
    cat = models.CharField(blank=True, null=True, max_length=100, db_index=True)
    fab = models.CharField(blank=True, null=True, max_length=100)
    model = models.CharField(blank=True, null=True, max_length=100)
    ver = models.CharField(blank=True, null=True, max_length=100)
    year = models.CharField(blank=True, null=True, max_length=9)
    price = models.IntegerField(default=0)
    critic = models.IntegerField(default = 1)
    stock = models.IntegerField(default = 0)
    

    #updated_by=models.ForeignKey(UserProfile, related_name='updated_by_user')
    #created_by=models.ForeignKey(UserProfile, related_name='created_by_user')

    updated_by=models.ForeignKey(settings.AUTH_USER_MODEL,
        related_name='updated_by_user', 
        on_delete=models.CASCADE)
    created_by=models.ForeignKey(settings.AUTH_USER_MODEL,
        related_name='created_by_user', 
        on_delete=models.CASCADE)
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    ubicacion = models.CharField(blank=True, null=True, max_length=50)
    origen = models.CharField(blank=True, null=True, max_length=50)
    nota = models.CharField(blank=True, null=True, max_length=300)

    def __str__(self):
        ''' Retornar String '''
        return  self.name
