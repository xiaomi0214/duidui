#coding=utf-8
from django.shortcuts import render,redirect
from django.http import HttpResponse

from .models import schoolInf,profession,schoolInfEnPlanInf,User
def login(request):
    if request.method=="POST":
        userName=request.POST.get('userName')
        passwd=request.POST.get('passwd')
        userObjList=User.objects.filter(userName=userName)
        msg=""
        if len(userObjList)==1:
            userObj=userObjList[0]
            if userObj.passwd==passwd:
                request.session['loginStatus'] = 'loginSuccessd'
                return redirect('/search/')
            else:
                msg="密码错误"
        else:
            msg="用户不存在"
        return render(request, 'login.html', {'msg': msg})
    else:
        return render(request,'login.html',)

def checkLogin(func):
    def gateFunc(request):
        loginStatus=request.session.get('loginStatus','')
        if not loginStatus:
            return redirect('/login/')
        else:
            return func(request)
    return gateFunc

@checkLogin
def logout(request):
    del  request.session['loginStatus']
    return redirect('/login/')

@checkLogin
def search(request):
    if request.method=="POST":
        ##获取数据
        schoolName = request.POST.get('schoolName', 'null')
        school_local = request.POST.get('school_local', 'null')
        schooltype=request.POST.get('schooltype','null')
        schoolSort=request.POST.get('schoolSort')
        if not schoolSort:
            schoolSort=99999999
        print(type(schoolSort),schoolSort)
        professionName = request.POST.get('professionName', 'null')

        year=request.POST.get('year','Null')
        gradeSort=request.POST.get('gradeSort','null')
        if not gradeSort:
            gradeSort=0
        ##通过检索条件1：假设数据输入正确，根据数据查询结果并返回
        schoolinfDataList=[]
        schoolobjs=schoolInf.objects.filter(schoolName__contains=schoolName ,school_local__contains=school_local,schoolSort__lte=schoolSort,schooltype__contains=schooltype)
        print("schoolName:",schoolName,len(schoolobjs))
        # for each in schoolobj:
        #     print(each.schoolName)
        if len(schoolobjs)>0:
            # print(u'学校存在')
            for schoolobj  in schoolobjs:
                schoolInfEnPlanInfObjs = schoolInfEnPlanInf.objects.filter(schoolId=schoolobj.schoolId)
                schoolInfEnPlanInfdataList = []

                yearLocal=""
                print('year:',year)
                lowlocalList=[]
                for schoolInfEnPlanInfobj in schoolInfEnPlanInfObjs:
                    schoolInfEnPlanInfdata = {
                        'year': schoolInfEnPlanInfobj.year,
                        'planNum': schoolInfEnPlanInfobj.planNum,
                        'toudangNum': schoolInfEnPlanInfobj.toudangNum,
                        'lowgrade': schoolInfEnPlanInfobj.lowgrade,
                        'xiancha': schoolInfEnPlanInfobj.xiancha,
                        'lowlocal': schoolInfEnPlanInfobj.lowlocal
                    }



                    if not year:
                        print(schoolInfEnPlanInfdata['lowlocal'])
                        lowlocalList.append(schoolInfEnPlanInfdata['lowlocal'])
                        yearLocal=yearLocal+str(schoolInfEnPlanInfdata.get('year'))+"-"+str(schoolInfEnPlanInfdata.get('lowlocal'))+" "
                    else:
                        if int(year)==schoolInfEnPlanInfdata.get('year'):
                            lowlocalList.append(schoolInfEnPlanInfdata['lowlocal'])
                            yearLocal = str(schoolInfEnPlanInfdata.get('year')) + "-" + str(schoolInfEnPlanInfdata.get('lowlocal'))
                            break
                        else:
                            continue
                print(yearLocal,lowlocalList)
                ##如果lowlocalList 最低位次为空，乃么默认为0
                try:
                    lowlocal =min(lowlocalList)
                except:
                    lowlocal=0

                schoolinfData = {
                    'schoolId': schoolobj.schoolId,
                    'schoolName': schoolobj.schoolName,
                    'schoolSort': schoolobj.schoolSort,
                    'schoolHead': schoolobj.schoolHead,
                    'school_local': schoolobj.school_local,
                    'schooltype': schoolobj.schooltype,
                    'professionAnPai': schoolobj.professionAnPai,
                    'yearLocal':yearLocal
                }
                if int(gradeSort) <=lowlocal:
                    schoolinfDataList.append(schoolinfData)

        schoolinfDataList.sort(key=lambda dictData:dictData['schoolSort'])
        return render(request,'search.html',{"schoolinfDataList":schoolinfDataList,'loginStatus':request.session.get('loginStatus')})

    else:
        print(request.session.get('loginStatus'))
        return render(request,'search.html',{'loginStatus':request.session.get('loginStatus')})
@checkLogin
def searchProfession(request):
    if request.method=="POST":
        ##获取数据
        professionName = request.POST.get('professionName', 'null')
        school_local = request.POST.get('school_local', 'null')
        schooltype=request.POST.get('schooltype','null')
        schoolSort=request.POST.get('schoolSort','null')
        if not schoolSort:
            schoolSort=99999999

        year=request.POST.get('year','Null')
        gradeSort=request.POST.get('gradeSort','null')
        if not gradeSort:
            gradeSort=0    ###空格输入时，代表全部；选择50 ，只能返回大于50的；0 大于0的所有；
        ##通过检索条件1：假设数据输入正确，根据数据查询结果并返回
        resultDataList=[]
        professionObjs=profession.objects.filter(professionName__contains=professionName )
        if len(professionObjs)>0 :
            for prof in professionObjs:
                print(prof.schoolId,)
                schoolObj=prof.schoolId
                print(schoolObj.schooltype,schoolObj.schoolName)

                resultData={
                    'professionName':prof.professionName,
                    'professionInf':prof.professionInf,
                    'schoolId':prof.schoolId,
                    'schoolName':schoolObj.schoolName,
                    'schoolSort': schoolObj.schoolSort,
                    'school_local': schoolObj.school_local,
                    'schooltype': schoolObj.schooltype,
                }
                # print(resultData[schooltype])
                # if school_local or schooltype or schoolSort:
                if (school_local and school_local not in resultData['school_local']) or (schooltype and schooltype not in resultData['schooltype']) or (schoolSort and int(schoolSort)<resultData['schoolSort'] ):
                    print('学校不符合要求')
                else:
                    resultDataList.append(resultData)

        return render(request,'searchProfession.html',{"schoolinfDataList":resultDataList,'loginStatus':request.session.get('loginStatus')})

    else:
        return render(request,'searchProfession.html',{'loginStatus':request.session.get('loginStatus')})

@checkLogin
def schoolProfessionShow(request):
    schoolName=request.GET.get('schoolName')
    schoolObj=schoolInf.objects.get(schoolName=schoolName)


    ##获取专业信息
    professionDataList=[]
    professionObjs=profession.objects.filter(schoolId=schoolObj.schoolId)
    for professionObj in professionObjs:
        professionInf={
            'professionName':professionObj.professionName,
            'professionInf':professionObj.professionInf
        }
        professionDataList.append(professionInf)
    print(request.session.get('loginStatus'))
    return render(request,'schoolProfessionShow.html',{'schoolName':schoolName,'professionDataList':professionDataList,'loginStatus':request.session.get('loginStatus')})


# def test(request):
#     return render(request,'workPush.html')
#
# def index(request):
#     houseObj=''
#     return  render(request,'base.html',{"userobj":houseObj,"house":houseObj})
#
#
#
# def mySubscribe(request):
#     return render(request,'mySubscribe.html')
#
# def myWorkPush(request):
#     return render(request,'myWorkPush.html')
# def register(request):
#     return render(request,'register.html')
# def resultShow(request):
#     return render(request,'resultShow.html')
# def setPassword(request):
#     return render(request,'setPassword.html')
# def workPush(request):
#     return render(request,'workPush.html')
#

