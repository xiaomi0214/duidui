 1.功能：
  高考志愿填报参考系统  
  
 模块构成：  
  近年来高考录取数据自动化录入到数据库  
    技术点：python 读excel文件写数据库  
  志愿填报参考系统  
    技术点：djnago 提供一个以高校城市、高考排名、高校层次、专业等为检索条件的web 服务。  
    
  
 2.使用语言工具的版本  
  Python 2.7.16  
  相应模块版本  
  requirements.txt   


  3.部署
  
  docker pull ccr.ccs.tencentyun.com/xiong/gaokao:v1  
  docker run -d -p 8000:8000 --name gaokaoServer ccr.ccs.tencentyun.com/xiong/gaokao:v1  
  访问：http://ip:8000  
