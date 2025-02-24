from django.urls import path

from . import views

urlpatterns = [
    # path("", views.index, name="index"),
    path("", views.home_page, name="home_page"),
    path("station/<str:station_name>/", views.station, name="station"),
    path("station/<str:station_name>/fetch-data/", views.fetch_data_for_tables, name="fetch_data_for_tables"),
    path("download-data/", views.download_data, name="download_data"),
]