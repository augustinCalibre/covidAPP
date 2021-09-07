

from django import  forms
from django.db.models import fields


class suggestionForms(forms.Form):

    class Meta:
        fields=["nom","email","suggest"]
        
#    nom= forms.CharField(label="votre nom")
#    email= forms.CharField(widget=forms.Textarea)
#    suggest = forms.EmailField(label="Votre Email")
        


