#encoding=utf-8
from django.db import models

class schoolInf(models.Model):
    """
    #学校详细信息

    """
    schoolId=models.IntegerField(default=0,primary_key=True) ##学校代码
    schoolName=models.CharField(max_length=40,unique=True)   #学校名称
    schoolSort=models.IntegerField(default=0)   #学校排名
    schoolHead=models.CharField(max_length=40)            ##主管部分
    school_local=models.CharField(max_length=40)        ##所在地
    schooltype=models.CharField(max_length=15)          ##学校层级
    professionAnPai = models.CharField(max_length=15)  ##专业安排

    class Meta:
        db_table="schoolInf"

class profession(models.Model):
    """
    #专业相关信息
    zhuanyeanpai=rowData[15]
    zhuanyeName=rowData[16]
    zhuanyeInf='  -  '.join(rowData[17:])
    """
    # id=models.IntegerField(default=0,primary_key=True)
    professionName=models.CharField(max_length=50) ##专业名称
    professionInf=models.CharField(max_length=100)  ##专业录取信息

    schoolId=models.ForeignKey(schoolInf)
    class Meta:
        db_table="profession"
        unique_together=('schoolId','professionName')


class schoolInfEnPlanInf(models.Model):
    """
    #相关专业往年投档详细信息
    """

    # id=models.IntegerField(default=0,primary_key=True)
    year=models.IntegerField()           ##年份
    planNum=models.IntegerField()       ##当年的招生计划数
    toudangNum=models.IntegerField()    ##投档数
    lowgrade=models.IntegerField()      ##最低分
    xiancha=models.IntegerField()       ##线差
    lowlocal=models.IntegerField()      ##最低位次

    schoolId=models.ForeignKey(schoolInf)
    class Meta:
        db_table="schoolInfEnPlanInf"


class User(models.Model):
    userName=models.CharField(max_length=20,unique=True)
    passwd=models.CharField(max_length=50)

    class Meta:
        db_table="User"



