from django.contrib import admin



# Register your models here.
from .models import cityStat
from .models import suggestion

class cityStatAdmin (admin.ModelAdmin):
    list_display=('Ncas','Ndeces','Ngueris','Nvacine')

class suggestionAdmin (admin.ModelAdmin):
    list_display=('nom','email','suggest')


admin.site.register(cityStat, cityStatAdmin)

admin.site.register(suggestion, suggestionAdmin)

