from django.shortcuts import render

from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import status

from profiles_api import serializers


class HelloApiView(APIView):
    ''' API VIEW TEST'''

    serializer_class = serializers.HelloSerializer

    def get(self, request, format=None):
        '''retorna lista de caracteristicas del api view'''
        an_apiview = [
            'usamos metodos http  como funciones (get, post, put, patch, delete)',
            'es similar a una vista tradicional de django',
            'nos da el mayor control sobre la logica de nuestra aplicacion',
            'esta mapeado manualmente a los URLs',
        ]

        return Response({'message': 'Hello', 'an_apiview': an_apiview})

    def post(self, request):
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