#coding=utf-8
import logging
logging.basicConfig(
    filename="logs/test.log",
    level = logging.DEBUG,
    format = '%(asctime)s  - %(levelname)s-[%(lineno)s] - %(message)s'
)
logger = logging.getLogger(__name__)
# import logging.config
# logging.config.fileConfig('logset.cnf')
# # logger=logging.getLogger()
# logger=logging.getLogger()

import xlrd
import pymysql

##处理同学校，存在相同专业名称问题
profeesion_book=0

def errorDataWriteFile(data):
    with open('errorData.txt','ab+') as f:
        f.write(data+"\n")


##插入数据库
def execSql(sql_str):
    dbinf={
        "database": "site_t",
        "user": "test",
        "password": "redhat",
        "host": "47.106.145.76",
    }
    try:
        conn=pymysql.connect(**dbinf)
        cur = conn.cursor()
        execData = cur.execute(sql_str)
        resultData = cur.fetchall()
        cur.close()
        conn.commit()
        conn.close()
        return resultData
    except Exception as error:
        logger.error(error)


def getExcelInf():
    ##excel信息：文件名、sheet
    try:
        workbook = xlrd.open_workbook('testData.xlsx')
        table = workbook.sheet_by_name(u'一本')
    except  Exception as error:
        logger.error(error)
        exit(1)
    else:
        rowsNum = table.nrows
        colsNum = table.ncols
        return (table,rowsNum)


def InsertSchoolData(rowData):
    ##学校代码
    schoolId = int(rowData[0])
    ##学校名称
    schoolName = rowData[1]
    ##学校排名
    schoolSort = rowData[2]
    if schoolSort:
        schoolSort = int(schoolSort)
    else:
        schoolSort = 0

    schoolHead = rowData[12]
    school_local = rowData[13]
    schooltype = rowData[14]
    zhuanyeanpai = rowData[15]

    ##检测学校数据是否已经插入（数目>=1 说明学校信息已经插入过，乃么接下来只插入专业信息，不插入学校信息）
    sql_test = 'select count(*) from profession where schoolId_id=%d;' % (schoolId)
    execData = execSql(sql_test)
    if execData[0][0] < 1:
        logger.info(u'学校未插入，现在插入学校信息--%s' % (schoolName))
        sql_str_schoolId = "insert into schoolInf(schoolId,schoolName,schoolHead,schoolSort,school_local,schooltype,professionAnPai) values(%d,\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\");" % (schoolId, schoolName, schoolHead, schoolSort, school_local, schooltype, zhuanyeanpai)
        try:
            execSql(sql_str_schoolId)
            logger.info(u'%s--插入成功:%s'%(schoolName,sql_str_schoolId))
            return (0,schoolId)
        except Exception as error:
            logger.error(u'学校信息插入失败--%s;插入语句：%s;原因:%s'%(schoolName,sql_str_schoolId,error))
            return (1,0)
    else:
        ##学校信息已经插入
        return (2,schoolId)

##投档信息插入
def schoolInfEnPlanInfInsert(rowData,schoolId):
    """
    # 计划数
    # 投档数
    # 年份
    """
    try:
        ##2016 0代表无数据，用0填充

        if rowData[3]:
            tou_2016 = rowData[3].split('/')
            jihua_2016 = tou_2016[0]
            toudang_2016 = tou_2016[1]
        else:
            jihua_2016=0
            toudang_2016=0


        if rowData[4]:
            lowgradeinf_2016 = rowData[4].split(' ')
            lowgrade_2016 = lowgradeinf_2016[0]
            xiancha_2016 = lowgradeinf_2016[1]
        else:
            lowgrade_2016=0
            xiancha_2016=0

        ##最低位次如果存在，取其int型。否则用9999999填充，代表位次选择失效。
        if rowData[5]:
            lowstation_2016 = int(rowData[5])
        else:
            lowstation_2016=99999999



        ###2017
        if rowData[6]:
            tou_2017 = rowData[6].split('/')
            jihua_2017 = tou_2017[0]
            toudang_2017 = tou_2017[1]
        else:
            jihua_2017=0
            toudang_2017=0

        if rowData[7]:
            lowgradeinf_2017 =rowData[7].split(' ')
            lowgrade_2017 = lowgradeinf_2017[0]
            xiancha_2017 = lowgradeinf_2017[1]
        else:
            lowgrade_2017=0
            xiancha_2017=0

        if rowData[8]:
            lowstation_2017 = int(rowData[8])
        else:
            lowstation_2017=99999999


        ###2018
        if rowData[9]:
            tou_2018 = rowData[9].split('/')
            jihua_2018 = tou_2018[0]
            toudang_2018 = tou_2018[1]
        else:
            jihua_2018=0
            toudang_2018=0

        if rowData[10]:
            lowgradeinf_2018 = rowData[10].split(' ')
            lowgrade_2018 = lowgradeinf_2018[0]
            xiancha_2018 = lowgradeinf_2018[1]
        else:
            lowgrade_2018=0
            xiancha_2018=0

        if rowData[11]:
            lowstation_2018 = int(rowData[11])
        else:
            lowstation_2018 = 99999999
    except Exception as error:
        logger.error('学校代码:%d  错误:%s'%(schoolId,error))
        return 1
    else:

        sql_str_schoolInfEnPlanInf_2016 = "insert into schoolInfEnPlanInf(year,planNum,toudangNum,lowgrade,xiancha,lowlocal,schoolId_id) values(2016,%d,%d,%d,%d,%d,%d);" % (
        int(jihua_2016), int(toudang_2016), int(lowgrade_2016), int(xiancha_2016), int(lowstation_2016), int(schoolId))


        sql_str_schoolInfEnPlanInf_2017 = "insert into schoolInfEnPlanInf(year,planNum,toudangNum,lowgrade,xiancha,lowlocal,schoolId_id) values(2017,%d,%d,%d,%d,%d,%d);" % (
        int(jihua_2017), int(toudang_2017), int(lowgrade_2017), int(xiancha_2017), int(lowstation_2017), int(schoolId))


        sql_str_schoolInfEnPlanInf_2018 = "insert into schoolInfEnPlanInf(year,planNum,toudangNum,lowgrade,xiancha,lowlocal,schoolId_id) values(2018,%d,%d,%d,%d,%d,%d);" % (int(jihua_2018), int(toudang_2018), int(lowgrade_2018), int(xiancha_2018), int(lowstation_2018), int(schoolId))
        logger.info(u'现在插入2016-2018 学院招生信息：\n'+sql_str_schoolInfEnPlanInf_2016+'\n'+sql_str_schoolInfEnPlanInf_2017+'\n'+sql_str_schoolInfEnPlanInf_2018+'\n')
        try:
            execSql(sql_str_schoolInfEnPlanInf_2016)
            execSql(sql_str_schoolInfEnPlanInf_2017)
            execSql(sql_str_schoolInfEnPlanInf_2018)
            logger.info(u"现在插入2016-2018 学院招生信息--成功；")
            return 0
        except Exception as error:
            logger.error(u'现在插入2016-2018 学院招生信息--失败；原因：%s'%(error))
            return 1

def professionInsert(rowData,schoolId):
    global profeesion_book
    if rowData[16]:
        zhuanyeName = rowData[16]
    else:
        error='获取专业信息失败'
        logger.error(u'获取专业信息-failed;原因:%s'%(error))
        return (1,error )
    zhuanyeInf = '  --  '.join(rowData[17:])

    sql_test = 'select * from profession where schoolId_id=%d and professionName=\'%s\';' % (schoolId, zhuanyeName)

    execData = execSql(sql_test)
    if execData:
        logger.warn(u'存在同学院相同专业名称-%d-%s;查询结果:%s'%(schoolId, zhuanyeName,execData))
        profeesion_book = profeesion_book + 1
        zhuanyeName = zhuanyeName + str(profeesion_book)

#8009-insert into profession(professionName,professionInf,schoolId_id) values("","  --    --    --  ",8009);
    sql_str_profession = "insert into profession(professionName,professionInf,schoolId_id) values(\"%s\",\"%s\",%d);" % (zhuanyeName, zhuanyeInf, schoolId)

    logger.info(u'插入专业信息-pro：%s-%s'%(schoolId,sql_str_profession))
    # print(sql_str_profession)
    try:
        execSql(sql_str_profession)
        logger.info(u'插入专业信息-successd')
        return (0,zhuanyeName)
    except Exception as error:
        logger.error(u'插入专业信息-failed;原因:%s'%(error))
        return (1,zhuanyeName)


def main():
    ##解决同学校相同多个专业名称问题：计算机1、计算机2
    i=0
    table,rowsNum=getExcelInf()

    for row in xrange(3,rowsNum):
        ##获取excel一行的数据，返回一个列表
        rowData=table.row_values(row)
        status,schoolId=InsertSchoolData(rowData)
        ##插入学校成功，插入招生信息与往年专业录取信息
        if status==0:
            statusEnPlan=schoolInfEnPlanInfInsert(rowData, schoolId)
            if statusEnPlan==0:
                statusProf,error=professionInsert(rowData, schoolId)
                if statusProf==1:
                    errorDataWriteFile(str(schoolId)+":"+error.encode('utf-8'))
            else:
                ##插入失败的学校记录在文件中
                errorDataWriteFile(str(schoolId).encode('utf-8'))
        elif status==2:
            statusProf,proName=professionInsert(rowData, schoolId)
            if statusProf == 1:
                errorDataWriteFile(str(schoolId) + "--" + proName.encode('utf-8'))
        else:
            ##插入失败的学校记录在文件中
            errorDataWriteFile(rowData[1].encode('utf-8'))



if __name__ == '__main__':
    main()
    # logger.warn('dd-warn')