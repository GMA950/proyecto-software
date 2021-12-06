from rest_framework import serializers
from profiles_api.models import UserProfile

class UserSerializer(serializers.Serializer):
    '''serializa un campo para probar nuestro apiview'''
    #name = serializers.CharField(max_length=10)
    class Meta:
            model = UserProfile
            fields = '_all_'