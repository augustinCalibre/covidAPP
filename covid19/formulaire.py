

from django import  forms

from .models import suggestion

from .models import contact


class suggestionForms(forms.ModelForm):

    class Meta:
        model=suggestion
        fields=["nom","email","suggest"]


class contactForms(forms.ModelForm):
    class Meta:
        model=contact
        fields=["nom","email","suggest"]
        
        
#    nom= forms.CharField(label="votre nom")
#    email= forms.CharField(widget=forms.Textarea)
#    suggest = forms.EmailField(label="Votre Email")







