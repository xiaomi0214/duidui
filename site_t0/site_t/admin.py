from django.contrib import admin

# # Register your models here.
from .models import schoolInf,profession,schoolInfEnPlanInf,User

class schoolInfEnPlanInfLine(admin.TabularInline):
    model = schoolInfEnPlanInf


class professionLine(admin.TabularInline):
    model = profession

class schoolInfAdmin(admin.ModelAdmin):
    fields = ('schoolId','schoolName','schoolSort','schoolHead','school_local','schooltype','professionAnPai')
    list_display = ['schoolName','school_local']
    search_fields = ('schoolName',)
    inlines = [schoolInfEnPlanInfLine,professionLine]

admin.site.register(schoolInf,schoolInfAdmin)

class UserAdmin(admin.ModelAdmin):
    fields = ('userName','passwd')
    list_display = ['userName',]
    search_fields = ('userName',)

admin.site.register(User,UserAdmin)
# admin.site.register([schoolInf,profession,schoolInfEnPlanInf])


