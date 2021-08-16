from django.db import models

# Create your models here.
class cityStat(models.Model):
    ville=models.CharField(max_length=30)
    Ncas=models.IntegerField()
    Ndeces=models.IntegerField()
    Ngueris=models.IntegerField()
    Nvacine=models.IntegerField()
    cleSvg=models.CharField(max_length=255)
 