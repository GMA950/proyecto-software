from django.shortcuts import render

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status
from profiles_api.serializers import UserSerializer

from rest_framework.permissions import IsAuthenticated
from profiles_api.models import UserProfile
from django.conf import settings

class userAPI(APIView):
    ''' API VIEW TEST'''

    #serializer_class = serializers.HelloSerializer
    # Protejemos el punto final
    permission_classes = (IsAuthenticated,)
    def get(self, request, format=None, username=None):

        
        #content = {'message': 'Hello, World!'}

        if username:
            user = UserProfile.objects.get(username=username)#UserProfile.objects.get(username=username)
            serializer = UserSerializer(user)
            print(serializer.data['id'])
            return Response({"status": "success", "id": serializer.data['id']}, status=status.HTTP_200_OK)


        users = UserProfile.objects.all()#settings.AUTH_USER_MODEL.objects.all()
        serializer = UserSerializer(users, many=True)
        
        
        return Response(serializer.data)
        #return Response({'message': 'Hello', 'an_apiview': an_apiview})
        #return Response(content)

    def POST(self, request):
        '''crea un mensaje con nuestro nombre'''
        serializer = self.serializer_class(data=request.data)

        if serializer.is_valid():
            name = serializer.validated_data.get('name')
            message = f'Hello {name}'
            return Response({'message:':message})
        else:
            return Response(
                serializer.errors,
                status=status.HTTP_400_BAD_REQUEST
            )

    def put(self, request, pk=None):
        '''maneja actualizar un objeto'''
        return Response({
            'method': 'PUT'
        })

    def patch(self, request, pk=None):
        '''maneja actualizacion parcial de un objeto'''
        return Response({
            'method': 'PATCH'
        })

    def delete(self, request, pk=None):
        '''borrar un objeto'''
        return Response({
            'method': 'DELETE'
        })