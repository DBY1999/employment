#coding:utf-8
from django.db import models

from .model import BaseModel

from datetime import datetime



class zuhu(BaseModel):
    __doc__ = u'''zuhu'''
    __tablename__ = 'zuhu'

    __loginUser__='zhanghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='zhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    zhanghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='账号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    xingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    shenfenzheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='身份证' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    status=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='状态' )
    '''
    zhanghao=VARCHAR
    mima=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    shouji=VARCHAR
    shenfenzheng=VARCHAR
    touxiang=Text
    sfsh=VARCHAR
    shhf=Text
    status=Integer
    '''
    class Meta:
        db_table = 'zuhu'
        verbose_name = verbose_name_plural = '用户'
class qiye(BaseModel):
    __doc__ = u'''qiye'''
    __tablename__ = 'qiye'

    __loginUser__='qiyezhanghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='qiyezhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    qiyezhanghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='企业账号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    qiyemingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='企业名称' )
    fuzeren=models.CharField ( max_length=255, null=True, unique=False, verbose_name='负责人' )
    lianxifangshi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系方式' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    qiyedizhi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业地址' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    qiyejieshao=models.TextField   (  null=True, unique=False, verbose_name='企业介绍' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    status=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='状态' )
    '''
    qiyezhanghao=VARCHAR
    mima=VARCHAR
    qiyemingcheng=VARCHAR
    fuzeren=VARCHAR
    lianxifangshi=VARCHAR
    youxiang=VARCHAR
    qiyedizhi=VARCHAR
    touxiang=Text
    qiyejieshao=Text
    sfsh=VARCHAR
    shhf=Text
    status=Integer
    '''
    class Meta:
        db_table = 'qiye'
        verbose_name = verbose_name_plural = '企业'
class fangdong(BaseModel):
    __doc__ = u'''fangdong'''
    __tablename__ = 'fangdong'

    __loginUser__='fangdongzhanghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='fangdongzhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    fangdongzhanghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='房东账号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    fangdongxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房东姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    lianxidianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系电话' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    status=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='状态' )
    '''
    fangdongzhanghao=VARCHAR
    mima=VARCHAR
    fangdongxingming=VARCHAR
    xingbie=VARCHAR
    lianxidianhua=VARCHAR
    touxiang=Text
    sfsh=VARCHAR
    shhf=Text
    status=Integer
    '''
    class Meta:
        db_table = 'fangdong'
        verbose_name = verbose_name_plural = '房东'
class gerenjianli(BaseModel):
    __doc__ = u'''gerenjianli'''
    __tablename__ = 'gerenjianli'



    __authTables__={'zhanghao':'zuhu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    zhuanye=models.CharField ( max_length=255, null=True, unique=False, verbose_name='专业' )
    xueli=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学历' )
    qiuzhiyixiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='求职意向' )
    jiaoyubeijing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='教育背景' )
    yixiangchengshi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='意向城市' )
    xinziyaoqiu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='薪资要求' )
    gongzuojingli=models.TextField   (  null=True, unique=False, verbose_name='工作经历' )
    jianliwenjian=models.TextField   (  null=True, unique=False, verbose_name='简历文件' )
    xingquaihao=models.TextField   (  null=True, unique=False, verbose_name='兴趣爱好' )
    '''
    zhanghao=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    shouji=VARCHAR
    touxiang=Text
    zhuanye=VARCHAR
    xueli=VARCHAR
    qiuzhiyixiang=VARCHAR
    jiaoyubeijing=VARCHAR
    yixiangchengshi=VARCHAR
    xinziyaoqiu=VARCHAR
    gongzuojingli=Text
    jianliwenjian=Text
    xingquaihao=Text
    '''
    class Meta:
        db_table = 'gerenjianli'
        verbose_name = verbose_name_plural = '个人简历'
class fangwuleixing(BaseModel):
    __doc__ = u'''fangwuleixing'''
    __tablename__ = 'fangwuleixing'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    fangwuleixing=models.CharField ( max_length=255, null=True,unique=True, verbose_name='房屋类型' )
    '''
    fangwuleixing=VARCHAR
    '''
    class Meta:
        db_table = 'fangwuleixing'
        verbose_name = verbose_name_plural = '房屋类型'
class fangwuhuxing(BaseModel):
    __doc__ = u'''fangwuhuxing'''
    __tablename__ = 'fangwuhuxing'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    fangwuhuxing=models.CharField ( max_length=255, null=True,unique=True, verbose_name='房屋户型' )
    '''
    fangwuhuxing=VARCHAR
    '''
    class Meta:
        db_table = 'fangwuhuxing'
        verbose_name = verbose_name_plural = '房屋户型'
class fangyuanxinxi(BaseModel):
    __doc__ = u'''fangyuanxinxi'''
    __tablename__ = 'fangyuanxinxi'



    __authTables__={'fangdongzhanghao':'fangdong',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    fangwumingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='房屋名称' )
    fangwuleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房屋类型' )
    fangwuhuxing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房屋户型' )
    zufangleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='租房类型' )
    tupian=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    shipin=models.TextField   (  null=True, unique=False, verbose_name='视频' )
    mianji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='面积' )
    dizhi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='地址' )
    zujin=models.FloatField   (  null=True, unique=False, verbose_name='租金' )
    yajin=models.FloatField   (  null=True, unique=False, verbose_name='押金' )
    chaoxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='朝向' )
    fangyuansheshi=models.TextField   (  null=True, unique=False, verbose_name='房源设施' )
    jiaotongqingkuang=models.TextField   (  null=True, unique=False, verbose_name='交通情况' )
    fabushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='发布时间' )
    fangyuanxiangqing=models.TextField   (  null=True, unique=False, verbose_name='房源详情' )
    fangdongzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房东账号' )
    fangdongxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房东姓名' )
    lianxidianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系电话' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    discussnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='评论数' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    '''
    fangwumingcheng=VARCHAR
    fangwuleixing=VARCHAR
    fangwuhuxing=VARCHAR
    zufangleixing=VARCHAR
    tupian=Text
    shipin=Text
    mianji=VARCHAR
    dizhi=VARCHAR
    zujin=Float
    yajin=Float
    chaoxiang=VARCHAR
    fangyuansheshi=Text
    jiaotongqingkuang=Text
    fabushijian=DateTime
    fangyuanxiangqing=Text
    fangdongzhanghao=VARCHAR
    fangdongxingming=VARCHAR
    lianxidianhua=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    clicktime=DateTime
    clicknum=Integer
    discussnum=Integer
    storeupnum=Integer
    '''
    class Meta:
        db_table = 'fangyuanxinxi'
        verbose_name = verbose_name_plural = '房源信息'
class zulindingdan(BaseModel):
    __doc__ = u'''zulindingdan'''
    __tablename__ = 'zulindingdan'



    __authTables__={'zhanghao':'zuhu','fangdongzhanghao':'fangdong',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    dingdanbianhao=models.CharField ( max_length=255, null=True,unique=True, verbose_name='订单编号' )
    fangwuleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房屋类型' )
    fangwuhuxing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房屋户型' )
    tupian=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    zujin=models.FloatField   (  null=True, unique=False, verbose_name='租金' )
    zuqi=models.IntegerField  (  null=True, unique=False, verbose_name='租期' )
    yajin=models.FloatField   (  null=True, unique=False, verbose_name='押金' )
    zongjia=models.FloatField   (  null=True, unique=False, verbose_name='总价' )
    zufangyuanyin=models.CharField ( max_length=255, null=True, unique=False, verbose_name='租房原因' )
    zufangshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='租房时间' )
    xiadanshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='下单时间' )
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    shenfenzheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='身份证' )
    fangdongzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房东账号' )
    fangdongxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房东姓名' )
    lianxidianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系电话' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    ispay=models.CharField ( max_length=255, null=True, unique=False,default='未支付', verbose_name='是否支付' )
    '''
    dingdanbianhao=VARCHAR
    fangwuleixing=VARCHAR
    fangwuhuxing=VARCHAR
    tupian=Text
    zujin=Float
    zuqi=Integer
    yajin=Float
    zongjia=Float
    zufangyuanyin=VARCHAR
    zufangshijian=DateTime
    xiadanshijian=DateTime
    zhanghao=VARCHAR
    xingming=VARCHAR
    shouji=VARCHAR
    shenfenzheng=VARCHAR
    fangdongzhanghao=VARCHAR
    fangdongxingming=VARCHAR
    lianxidianhua=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    ispay=VARCHAR
    '''
    class Meta:
        db_table = 'zulindingdan'
        verbose_name = verbose_name_plural = '租赁订单'
class tuizuxinxi(BaseModel):
    __doc__ = u'''tuizuxinxi'''
    __tablename__ = 'tuizuxinxi'



    __authTables__={'zhanghao':'zuhu','fangdongzhanghao':'fangdong',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    dingdanbianhao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='订单编号' )
    fangwuleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房屋类型' )
    fangwuhuxing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房屋户型' )
    tupian=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    zujin=models.FloatField   (  null=True, unique=False, verbose_name='租金' )
    zuqi=models.IntegerField  (  null=True, unique=False, verbose_name='租期' )
    yajin=models.FloatField   (  null=True, unique=False, verbose_name='押金' )
    zongjia=models.FloatField   (  null=True, unique=False, verbose_name='总价' )
    tuifangshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='退房时间' )
    tuifangyuanyin=models.TextField   (  null=True, unique=False, verbose_name='退房原因' )
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    shenfenzheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='身份证' )
    fangdongzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房东账号' )
    fangdongxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='房东姓名' )
    lianxidianhua=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系电话' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    ispay=models.CharField ( max_length=255, null=True, unique=False,default='未支付', verbose_name='是否支付' )
    '''
    dingdanbianhao=VARCHAR
    fangwuleixing=VARCHAR
    fangwuhuxing=VARCHAR
    tupian=Text
    zujin=Float
    zuqi=Integer
    yajin=Float
    zongjia=Float
    tuifangshijian=DateTime
    tuifangyuanyin=Text
    zhanghao=VARCHAR
    xingming=VARCHAR
    shouji=VARCHAR
    shenfenzheng=VARCHAR
    fangdongzhanghao=VARCHAR
    fangdongxingming=VARCHAR
    lianxidianhua=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    ispay=VARCHAR
    '''
    class Meta:
        db_table = 'tuizuxinxi'
        verbose_name = verbose_name_plural = '退租信息'
class zhaopinxinxi(BaseModel):
    __doc__ = u'''zhaopinxinxi'''
    __tablename__ = 'zhaopinxinxi'



    __authTables__={'qiyezhanghao':'qiye',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    zhiweimingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='职位名称' )
    zhiweileixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='职位类型' )
    xueliyaoqiu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='学历要求' )
    zhiweiyaoqiu=models.TextField   (  null=True, unique=False, verbose_name='职位要求' )
    shangbanshijian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='上班时间' )
    shangbandidian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='上班地点' )
    xinzidaiyu=models.FloatField   (  null=True, unique=False, verbose_name='薪资待遇' )
    zhaopinrenshu=models.IntegerField  (  null=True, unique=False, verbose_name='招聘人数' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    fabushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='发布时间' )
    qiyezhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业账号' )
    qiyemingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业名称' )
    fuzeren=models.CharField ( max_length=255, null=True, unique=False, verbose_name='负责人' )
    lianxifangshi=models.CharField ( max_length=255, null=True, unique=False, verbose_name='联系方式' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    zhaopinxiangqing=models.TextField   (  null=True, unique=False, verbose_name='招聘详情' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    '''
    zhiweimingcheng=VARCHAR
    zhiweileixing=VARCHAR
    xueliyaoqiu=VARCHAR
    zhiweiyaoqiu=Text
    shangbanshijian=VARCHAR
    shangbandidian=VARCHAR
    xinzidaiyu=Float
    zhaopinrenshu=Integer
    fengmian=Text
    fabushijian=DateTime
    qiyezhanghao=VARCHAR
    qiyemingcheng=VARCHAR
    fuzeren=VARCHAR
    lianxifangshi=VARCHAR
    youxiang=VARCHAR
    zhaopinxiangqing=Text
    sfsh=VARCHAR
    shhf=Text
    clicktime=DateTime
    clicknum=Integer
    storeupnum=Integer
    '''
    class Meta:
        db_table = 'zhaopinxinxi'
        verbose_name = verbose_name_plural = '招聘信息'
class toudijianli(BaseModel):
    __doc__ = u'''toudijianli'''
    __tablename__ = 'toudijianli'



    __authTables__={'zhanghao':'zuhu','qiyezhanghao':'qiye',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    jianliwenjian=models.TextField   (  null=True, unique=False, verbose_name='简历文件' )
    zhiweimingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='职位名称' )
    qiyezhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业账号' )
    qiyemingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业名称' )
    toudishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='投递时间' )
    crossuserid=models.BigIntegerField  (  null=True, unique=False, verbose_name='跨表用户id' )
    crossrefid=models.BigIntegerField  (  null=True, unique=False, verbose_name='跨表主键id' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='待审核', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    '''
    zhanghao=VARCHAR
    xingming=VARCHAR
    xingbie=VARCHAR
    shouji=VARCHAR
    touxiang=Text
    jianliwenjian=Text
    zhiweimingcheng=VARCHAR
    qiyezhanghao=VARCHAR
    qiyemingcheng=VARCHAR
    toudishijian=DateTime
    crossuserid=BigInteger
    crossrefid=BigInteger
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'toudijianli'
        verbose_name = verbose_name_plural = '投递简历'
class mianshitongzhi(BaseModel):
    __doc__ = u'''mianshitongzhi'''
    __tablename__ = 'mianshitongzhi'



    __authTables__={'qiyezhanghao':'qiye','zhanghao':'zuhu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    biaoti=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    zhiweimingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='职位名称' )
    tixingleixing=models.CharField ( max_length=255, null=True, unique=False, verbose_name='提醒类型' )
    qiyezhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业账号' )
    qiyemingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业名称' )
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    tongzhishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='通知时间' )
    tixingneirong=models.TextField   (  null=True, unique=False, verbose_name='提醒内容' )
    '''
    biaoti=VARCHAR
    zhiweimingcheng=VARCHAR
    tixingleixing=VARCHAR
    qiyezhanghao=VARCHAR
    qiyemingcheng=VARCHAR
    zhanghao=VARCHAR
    xingming=VARCHAR
    touxiang=Text
    tongzhishijian=DateTime
    tixingneirong=Text
    '''
    class Meta:
        db_table = 'mianshitongzhi'
        verbose_name = verbose_name_plural = '面试通知'
class luqutongzhi(BaseModel):
    __doc__ = u'''luqutongzhi'''
    __tablename__ = 'luqutongzhi'



    __authTables__={'qiyezhanghao':'qiye','zhanghao':'zuhu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    biaoti=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    zhiweimingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='职位名称' )
    shifouluyong=models.CharField ( max_length=255,null=False, unique=False, verbose_name='是否录用' )
    tongzhishijian=models.DateTimeField  (  null=True, unique=False, verbose_name='通知时间' )
    qiyezhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业账号' )
    qiyemingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='企业名称' )
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    touxiang=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    '''
    biaoti=VARCHAR
    zhiweimingcheng=VARCHAR
    shifouluyong=VARCHAR
    tongzhishijian=DateTime
    qiyezhanghao=VARCHAR
    qiyemingcheng=VARCHAR
    zhanghao=VARCHAR
    xingming=VARCHAR
    touxiang=Text
    '''
    class Meta:
        db_table = 'luqutongzhi'
        verbose_name = verbose_name_plural = '录取通知'
class zufangzixun(BaseModel):
    __doc__ = u'''zufangzixun'''
    __tablename__ = 'zufangzixun'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    biaoti=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    jianjie=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    fabushijian=models.DateField   (  null=True, unique=False, verbose_name='发布时间' )
    neirong=models.TextField   (  null=True, unique=False, verbose_name='内容' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    '''
    biaoti=VARCHAR
    jianjie=Text
    fabushijian=Date
    neirong=Text
    fengmian=Text
    clicktime=DateTime
    clicknum=Integer
    storeupnum=Integer
    '''
    class Meta:
        db_table = 'zufangzixun'
        verbose_name = verbose_name_plural = '租房资讯'
class yonghutousu(BaseModel):
    __doc__ = u'''yonghutousu'''
    __tablename__ = 'yonghutousu'



    __authTables__={'zhanghao':'zuhu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='回复'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='前要登'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    biaoti=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    zhengjutu=models.TextField   (  null=True, unique=False, verbose_name='证据图' )
    tousuyuanyin=models.TextField   (  null=True, unique=False, verbose_name='投诉原因' )
    tousushijian=models.DateTimeField  (  null=True, unique=False, verbose_name='投诉时间' )
    zhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='账号' )
    xingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='姓名' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='回复内容' )
    '''
    biaoti=VARCHAR
    zhengjutu=Text
    tousuyuanyin=Text
    tousushijian=DateTime
    zhanghao=VARCHAR
    xingming=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'yonghutousu'
        verbose_name = verbose_name_plural = '用户投诉'
class huodongxuanchuan(BaseModel):
    __doc__ = u'''huodongxuanchuan'''
    __tablename__ = 'huodongxuanchuan'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    biaoti=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    jianjie=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    fabushijian=models.DateField   (  null=True, unique=False, verbose_name='发布时间' )
    neirong=models.TextField   (  null=True, unique=False, verbose_name='内容' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    '''
    biaoti=VARCHAR
    jianjie=Text
    fabushijian=Date
    neirong=Text
    fengmian=Text
    clicktime=DateTime
    clicknum=Integer
    storeupnum=Integer
    '''
    class Meta:
        db_table = 'huodongxuanchuan'
        verbose_name = verbose_name_plural = '活动宣传'
class peixunziyuan(BaseModel):
    __doc__ = u'''peixunziyuan'''
    __tablename__ = 'peixunziyuan'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='是'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    ziyuanmingcheng=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资源名称' )
    ziyuanleixing=models.CharField ( max_length=255,null=False, unique=False, verbose_name='资源类型' )
    fujian=models.TextField   (  null=True, unique=False, verbose_name='附件' )
    tupian=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    shangchuanshijian=models.DateTimeField  (  null=True, unique=False, verbose_name='上传时间' )
    ziyuanxiangqing=models.TextField   (  null=True, unique=False, verbose_name='资源详情' )
    thumbsupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='赞' )
    crazilynum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='踩' )
    '''
    ziyuanmingcheng=VARCHAR
    ziyuanleixing=VARCHAR
    fujian=Text
    tupian=Text
    shangchuanshijian=DateTime
    ziyuanxiangqing=Text
    thumbsupnum=Integer
    crazilynum=Integer
    '''
    class Meta:
        db_table = 'peixunziyuan'
        verbose_name = verbose_name_plural = '培训资源'
class jiuyezhidao(BaseModel):
    __doc__ = u'''jiuyezhidao'''
    __tablename__ = 'jiuyezhidao'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='是'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='是'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='是'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    biaoti=models.CharField ( max_length=255,null=False, unique=False, verbose_name='标题' )
    jianjie=models.TextField   (  null=True, unique=False, verbose_name='简介' )
    fabushijian=models.DateField   (  null=True, unique=False, verbose_name='发布时间' )
    fengmian=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    neirong=models.TextField   (  null=True, unique=False, verbose_name='内容' )
    thumbsupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='赞' )
    crazilynum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='踩' )
    clicktime=models.DateTimeField  (auto_now=True,  null=True, unique=False, verbose_name='最近点击时间' )
    clicknum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='点击次数' )
    discussnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='评论数' )
    storeupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='收藏数' )
    '''
    biaoti=VARCHAR
    jianjie=Text
    fabushijian=Date
    fengmian=Text
    neirong=Text
    thumbsupnum=Integer
    crazilynum=Integer
    clicktime=DateTime
    clicknum=Integer
    discussnum=Integer
    storeupnum=Integer
    '''
    class Meta:
        db_table = 'jiuyezhidao'
        verbose_name = verbose_name_plural = '就业指导'
class chatmessage(BaseModel):
    __doc__ = u'''chatmessage'''
    __tablename__ = 'chatmessage'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    uid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户ID' )
    fid=models.BigIntegerField  ( null=False, unique=False, verbose_name='好友用户ID' )
    content=models.CharField ( max_length=255, null=True, unique=False, verbose_name='内容' )
    format=models.IntegerField  (  null=True, unique=False, verbose_name='格式(1:文字，2:图片)' )
    isread=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='消息已读(0:未读，1:已读)' )
    '''
    uid=BigInteger
    fid=BigInteger
    content=VARCHAR
    format=Integer
    isread=Integer
    '''
    class Meta:
        db_table = 'chatmessage'
        verbose_name = verbose_name_plural = '消息表'
class friend(BaseModel):
    __doc__ = u'''friend'''
    __tablename__ = 'friend'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    uid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户ID' )
    fid=models.BigIntegerField  ( null=False, unique=False, verbose_name='好友用户ID' )
    name=models.CharField ( max_length=255,null=False, unique=False, verbose_name='名称' )
    picture=models.TextField   ( null=False, unique=False, verbose_name='图片' )
    role=models.CharField ( max_length=255, null=True, unique=False, verbose_name='角色' )
    tablename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='表名' )
    alias=models.CharField ( max_length=255, null=True, unique=False, verbose_name='别名' )
    type=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='类型(0:好友申请，1:好友，2:消息)' )
    '''
    uid=BigInteger
    fid=BigInteger
    name=VARCHAR
    picture=Text
    role=VARCHAR
    tablename=VARCHAR
    alias=VARCHAR
    type=Integer
    '''
    class Meta:
        db_table = 'friend'
        verbose_name = verbose_name_plural = '好友表'
class forum(BaseModel):
    __doc__ = u'''forum'''
    __tablename__ = 'forum'



    __authTables__={}
    __foreEndListAuth__='是'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    title=models.CharField ( max_length=255, null=True, unique=False, verbose_name='帖子标题' )
    content=models.TextField   ( null=False, unique=False, verbose_name='帖子内容' )
    parentid=models.BigIntegerField  (  null=True, unique=False, verbose_name='父节点id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    username=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    avatarurl=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    isdone=models.CharField ( max_length=255, null=True, unique=False, verbose_name='状态' )
    istop=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='是否置顶' )
    toptime=models.DateTimeField  (  null=True, unique=False, verbose_name='置顶时间' )
    typename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='分类名称' )
    cover=models.TextField   (  null=True, unique=False, verbose_name='封面' )
    isanon=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='是否匿名(1:是,0:否)' )
    delflag=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='是否删除(1:是,0:否)' )
    '''
    title=VARCHAR
    content=Text
    parentid=BigInteger
    userid=BigInteger
    username=VARCHAR
    avatarurl=Text
    isdone=VARCHAR
    istop=Integer
    toptime=DateTime
    typename=VARCHAR
    cover=Text
    isanon=Integer
    delflag=Integer
    '''
    class Meta:
        db_table = 'forum'
        verbose_name = verbose_name_plural = '交流论坛'
class forumtype(BaseModel):
    __doc__ = u'''forumtype'''
    __tablename__ = 'forumtype'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    typename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='分类名称' )
    '''
    typename=VARCHAR
    '''
    class Meta:
        db_table = 'forumtype'
        verbose_name = verbose_name_plural = '交流论坛类型'
class forumreport(BaseModel):
    __doc__ = u'''forumreport'''
    __tablename__ = 'forumreport'



    __authTables__={}
    __authSeparate__='是'#后台列表权限
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    forumid=models.BigIntegerField  (  null=True, unique=False, verbose_name='论坛id' )
    title=models.CharField ( max_length=255, null=True, unique=False, verbose_name='帖子标题' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='举报用户id' )
    username=models.CharField ( max_length=255, null=True, unique=False, verbose_name='举报用户名' )
    reporteduserid=models.BigIntegerField  ( null=False, unique=False, verbose_name='被举报用户id' )
    reportedusername=models.CharField ( max_length=255, null=True, unique=False, verbose_name='被举报用户名' )
    reason=models.TextField   ( null=False, unique=False, verbose_name='举报原因' )
    picture=models.TextField   (  null=True, unique=False, verbose_name='图片补充' )
    handleadvise=models.TextField   (  null=True, unique=False, verbose_name='处理建议' )
    status=models.CharField ( max_length=255, null=True, unique=False,default='处理中', verbose_name='状态' )
    reporttype=models.CharField ( max_length=255, null=True, unique=False,default='主题帖举报', verbose_name='举报类型' )
    '''
    forumid=BigInteger
    title=VARCHAR
    userid=BigInteger
    username=VARCHAR
    reporteduserid=BigInteger
    reportedusername=VARCHAR
    reason=Text
    picture=Text
    handleadvise=Text
    status=VARCHAR
    reporttype=VARCHAR
    '''
    class Meta:
        db_table = 'forumreport'
        verbose_name = verbose_name_plural = '交流论坛举报'
class storeup(BaseModel):
    __doc__ = u'''storeup'''
    __tablename__ = 'storeup'



    __authTables__={}
    __authSeparate__='是'#后台列表权限
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    refid=models.BigIntegerField  (  null=True, unique=False, verbose_name='商品id' )
    tablename=models.CharField ( max_length=255, null=True, unique=False, verbose_name='表名' )
    name=models.CharField ( max_length=255,null=False, unique=False, verbose_name='名称' )
    picture=models.TextField   (  null=True, unique=False, verbose_name='图片' )
    type=models.CharField ( max_length=255, null=True, unique=False,default='1', verbose_name='类型' )
    inteltype=models.CharField ( max_length=255, null=True, unique=False, verbose_name='推荐类型' )
    remark=models.CharField ( max_length=255, null=True, unique=False, verbose_name='备注' )
    '''
    userid=BigInteger
    refid=BigInteger
    tablename=VARCHAR
    name=VARCHAR
    picture=Text
    type=VARCHAR
    inteltype=VARCHAR
    remark=VARCHAR
    '''
    class Meta:
        db_table = 'storeup'
        verbose_name = verbose_name_plural = '收藏表'
class menu(BaseModel):
    __doc__ = u'''menu'''
    __tablename__ = 'menu'



    __authTables__={}
    __foreEndList__='是'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    menujson=models.TextField   (  null=True, unique=False, verbose_name='菜单' )
    '''
    menujson=Text
    '''
    class Meta:
        db_table = 'menu'
        verbose_name = verbose_name_plural = '菜单'
class discussfangyuanxinxi(BaseModel):
    __doc__ = u'''discussfangyuanxinxi'''
    __tablename__ = 'discussfangyuanxinxi'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    refid=models.BigIntegerField  ( null=False, unique=False, verbose_name='关联表id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    avatarurl=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    nickname=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    content=models.TextField   ( null=False, unique=False, verbose_name='评论内容' )
    reply=models.TextField   (  null=True, unique=False, verbose_name='回复内容' )
    thumbsupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='赞' )
    crazilynum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='踩' )
    istop=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='置顶(1:置顶,0:非置顶)' )
    tuserids=models.TextField   (  null=True, unique=False, verbose_name='赞用户ids' )
    cuserids=models.TextField   (  null=True, unique=False, verbose_name='踩用户ids' )
    '''
    refid=BigInteger
    userid=BigInteger
    avatarurl=Text
    nickname=VARCHAR
    content=Text
    reply=Text
    thumbsupnum=Integer
    crazilynum=Integer
    istop=Integer
    tuserids=Text
    cuserids=Text
    '''
    class Meta:
        db_table = 'discussfangyuanxinxi'
        verbose_name = verbose_name_plural = '房源信息评论表'
class discussjiuyezhidao(BaseModel):
    __doc__ = u'''discussjiuyezhidao'''
    __tablename__ = 'discussjiuyezhidao'



    __authTables__={}
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    refid=models.BigIntegerField  ( null=False, unique=False, verbose_name='关联表id' )
    userid=models.BigIntegerField  ( null=False, unique=False, verbose_name='用户id' )
    avatarurl=models.TextField   (  null=True, unique=False, verbose_name='头像' )
    nickname=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户名' )
    content=models.TextField   ( null=False, unique=False, verbose_name='评论内容' )
    reply=models.TextField   (  null=True, unique=False, verbose_name='回复内容' )
    thumbsupnum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='赞' )
    crazilynum=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='踩' )
    istop=models.IntegerField  (  null=True, unique=False,default='0', verbose_name='置顶(1:置顶,0:非置顶)' )
    tuserids=models.TextField   (  null=True, unique=False, verbose_name='赞用户ids' )
    cuserids=models.TextField   (  null=True, unique=False, verbose_name='踩用户ids' )
    '''
    refid=BigInteger
    userid=BigInteger
    avatarurl=Text
    nickname=VARCHAR
    content=Text
    reply=Text
    thumbsupnum=Integer
    crazilynum=Integer
    istop=Integer
    tuserids=Text
    cuserids=Text
    '''
    class Meta:
        db_table = 'discussjiuyezhidao'
        verbose_name = verbose_name_plural = '就业指导评论表'
