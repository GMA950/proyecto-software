from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from products import views

urlpatterns = [
    #path('', views.ProductList.as_view(), name="products")
    #path('', views.ProductList.as_view())
    path('products/', views.ProductList.as_view()),
    path('products/<int:id>', views.ProductList.as_view()),#
    path('products/code/<int:code>', views.ProductList.as_view()),
]

urlpatterns = format_suffix_patterns(urlpatterns)