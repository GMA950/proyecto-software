from django.urls import path, include
from rest_framework.authtoken.views import obtain_auth_token
from profiles_api import views

urlpatterns = [
    path('hello/', views.userAPI.as_view(), name = 'hello'),
    path('users/', views.userAPI.as_view()),
    path('users/<str:username>', views.userAPI.as_view()),
    path('api-token-auth/', obtain_auth_token, name = 'api_token_auth'),
]
