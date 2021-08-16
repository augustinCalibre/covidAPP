# Generated by Django 3.2.6 on 2021-08-16 12:54

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='cityStat',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ville', models.CharField(max_length=30)),
                ('Ncas', models.IntegerField()),
                ('Ndeces', models.IntegerField()),
                ('Ngueris', models.IntegerField()),
                ('Nvacine', models.IntegerField()),
                ('cleSvg', models.CharField(max_length=255)),
            ],
        ),
    ]
