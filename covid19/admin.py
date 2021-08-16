from django.contrib import admin

# Register your models here.
from .models import cityStat

class cityStatAdmin (admin.ModelAdmin):
    list_display=('Ncas','Ndeces','Ngueris','Nvacine')


admin.site.register(cityStat, cityStatAdmin)

