from django.shortcuts import render
from products.models import Product
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import status
from products.serializers import ProductSerializer

# Create your views here.
class ProductList(APIView):
    '''lista productos'''
    def get(self, request, format=None):
        products = Product.objects.all()
        serializer = ProductSerializer(products, many=True)
        return Response(serializer.data)

    def post(self, request, format=None):
        serializer = ProductSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)