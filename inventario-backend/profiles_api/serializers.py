from rest_framework import serializers
from profiles_api.models import UserProfile

class UserSerializer(serializers.ModelSerializer):
    '''serializa un campo para probar nuestro apiview'''
    #name = serializers.CharField(max_length=10)
    class Meta:
            model = UserProfile
            fields = '__all__'

    '''def get_id(self):
        # Provided the user is logged:
        user_id = self.context['request'].user.id
        # Now do whatever with user_id
        return user_id'''