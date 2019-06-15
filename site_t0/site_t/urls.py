"""site_t URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from . import views
urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^login/', views.login),
    url(r'^logout/', views.logout),
    url(r'^search/', views.search),
    url(r'^searchProfession/', views.searchProfession),
    url(r'^schoolProfessionShow/', views.schoolProfessionShow),

    # url(r'^submitSearch/', views.submitSearch),
    ##workPush setPassword  resultShow register  myWorkPush mySubscribe  login submitSearch
# url(r'^register/', views.register),
# url(r'^setPassword/', views.setPassword),
# url(r'^workPush/', views.workPush),
# url(r'^resultShow/', views.resultShow),
# url(r'^myWorkPush/', views.myWorkPush),
# url(r'^mySubscribe/', views.mySubscribe),
    # url(r'^test/', views.test),
    # url(r'^index/', views.index),
]
