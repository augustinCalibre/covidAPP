from django.db import models

# Create your models here.
class cityStat(models.Model):
    ville=models.CharField(max_length=30)
    Ncas=models.IntegerField()
    Ndeces=models.IntegerField()
    Ngueris=models.IntegerField()
    Nvacine=models.IntegerField()
    cleSvg=models.CharField(max_length=255)


class suggestion(models.Model):
    nom=models.CharField(max_length=200)
    email=models.CharField(max_length=200)
    suggest=models.CharField(max_length=255)