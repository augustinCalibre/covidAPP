# Generated by Django 3.2.7 on 2021-09-07 15:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('covid19', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='suggestion',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nom', models.CharField(max_length=200)),
                ('email', models.CharField(max_length=200)),
                ('suggest', models.CharField(max_length=255)),
            ],
        ),
    ]
