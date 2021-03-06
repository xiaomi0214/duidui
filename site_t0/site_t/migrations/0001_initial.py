# -*- coding: utf-8 -*-
# Generated by Django 1.11.20 on 2019-05-16 13:14
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='profession',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('professionName', models.CharField(max_length=50)),
                ('professionInf', models.CharField(max_length=100)),
            ],
            options={
                'db_table': 'profession',
            },
        ),
        migrations.CreateModel(
            name='schoolInf',
            fields=[
                ('schoolId', models.IntegerField(default=0, primary_key=True, serialize=False)),
                ('schoolName', models.CharField(max_length=40, unique=True)),
                ('schoolSort', models.IntegerField(default=0)),
                ('schoolHead', models.CharField(max_length=40)),
                ('school_local', models.CharField(max_length=40)),
                ('schooltype', models.CharField(max_length=15)),
                ('professionAnPai', models.CharField(max_length=15)),
            ],
            options={
                'db_table': 'schoolInf',
            },
        ),
        migrations.CreateModel(
            name='schoolInfEnPlanInf',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('year', models.IntegerField()),
                ('planNum', models.IntegerField()),
                ('toudangNum', models.IntegerField()),
                ('lowgrade', models.IntegerField()),
                ('xiancha', models.IntegerField()),
                ('lowlocal', models.IntegerField()),
                ('schoolId', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='site_t.schoolInf')),
            ],
            options={
                'db_table': 'schoolInfEnPlanInf',
            },
        ),
        migrations.AddField(
            model_name='profession',
            name='schoolId',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='site_t.schoolInf'),
        ),
        migrations.AlterUniqueTogether(
            name='profession',
            unique_together=set([('schoolId', 'professionName')]),
        ),
    ]
