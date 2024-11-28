from django.core.management.base import BaseCommand
from django.apps import apps

class Command(BaseCommand):
    help = "Delete all data from all models in the weatherdashboard app"

    def handle(self, *args, **kwargs):
        app_label = 'weatherdashboard'
        models = apps.get_app_config(app_label).get_models()

        for model in models:
            model_name = model.__name__
            self.stdout.write(f"Deleting data from model: {model_name}")
            model.objects.all().delete()
            self.stdout.write(f"Data from model {model_name} deleted successfully.")

        self.stdout.write(self.style.SUCCESS("All data from all models deleted successfully."))