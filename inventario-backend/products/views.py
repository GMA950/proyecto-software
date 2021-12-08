from django.shortcuts import render
from products.models import Product
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework import status
from products.serializers import ProductSerializer
from django.shortcuts import get_object_or_404

# Create your views here.
class ProductList(APIView):
    '''lista productos'''
    def get(self, request, format=None, id=None, code = None):
        #products/
        if id:
            item = Product.objects.get(id=id)
            print("debug")
            serializer = ProductSerializer(item)
            return Response({"status": "success", "data": serializer.data}, status=status.HTTP_200_OK)
        #products/code
        if code:
            item = Product.objects.get(code=code)
            serializer = ProductSerializer(item)
            return Response({"status": "success", "data": serializer.data}, status=status.HTTP_200_OK)

        products = Product.objects.all()
        serializer = ProductSerializer(products, many=True)
        #return Response(serializer.data)
        return Response({"status": "success", "data": serializer.data}, status=status.HTTP_200_OK)

    def post(self, request, format=None):
        serializer = ProductSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response({"status": "success", "data": serializer.data}, status=status.HTTP_201_CREATED)
        return Response({"status": "error", "data": serializer.errors}, status=status.HTTP_400_BAD_REQUEST)

    def patch(self, request, id=None):
        item = Product.objects.get(id=id)
        serializer = ProductSerializer(item, data=request.data, partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response({"status": "success", "data": serializer.data})
        else:
            return Response({"status": "error", "data": serializer.errors})

    def delete(self, request, id=None):
        item = get_object_or_404(Product, id=id)
        item.delete()
        return Response({"status": "success", "data": "Item Deleted"})