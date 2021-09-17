from django.contrib import admin



# Register your models here.
from .models import cityStat
from .models import suggestion
from .models import contact



class cityStatAdmin (admin.ModelAdmin):
    list_display=('ville','Ncas','Ndeces','Ngueris','Nvacine','cleSvg')

class suggestionAdmin (admin.ModelAdmin):
    list_display=('nom','email','suggest')

class contactAdmin (admin.ModelAdmin):
    list_display=('nom','email','suggest')


admin.site.register(cityStat, cityStatAdmin)

admin.site.register(suggestion, suggestionAdmin)
admin.site.register(contact, contactAdmin)

