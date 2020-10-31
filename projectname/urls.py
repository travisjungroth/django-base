import debug_toolbar
from django.contrib import admin
from django.urls import include, path

from . import views

urlpatterns = [
    path("admin/", admin.site.urls),
    path("", views.Home.as_view(), name="home"),
    path("__debug__/", include(debug_toolbar.urls)),
]
