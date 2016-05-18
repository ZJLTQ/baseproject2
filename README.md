# baseproject2是以Spring Boot为核心JavaEE应用参考示例。
  
 开源贡献包括：
MyBatis-Spring-Boot（https://github.com/abel533/MyBatis-Spring-Boot）
springside4（https://github.com/springside/springside4）
Bootstrap-3-Admin-Theme（https://github.com/meritoo/Bootstrap-3-Admin-Theme）

  坚持使用JDK8，Maven3.3，Dynamic Web Module 3.1。
  另外Bootstrap 3 （包括时间拾取器datatimepicker）对浏览器的影响 需要注意。

**跨终端设计说明**
 一般的JavaWeb使用Spring Boot的Controller设计，构建传统的站点。
 所有Rest API使用RestController，请求路径为/api/**。 对于移动终端、自助终端、数据交换等，建议采用Rest API。
 
**数据库说明**
项目使用的mysql数据库，请在generatorConfig.xml、resources/application.yml中配置数据库信息。
如果使用其他数据库，还需要在pom.xml中配置数据库JDBC连接依赖。其中generatorConfig.xml，只为开发设计，
可以利用MyBatisGenerator插件在eclipse中自动生成mybatis model文件，
在com.dcits.govsbu.southernbase.baseproject2.model包下。注意自动生成的model没有主键的注解，
在selectByPrimaryKey 查找时会将所有字段作为查询条件，会出现null转换错误。为了完成分页查询，还需要给model
添加page、raws变量，及get/set方法。
示例使用的脚本为resources/mysql_demo.sql。

**效率辅助说明**
在com.dcits.govsbu.southernbase.baseproject2.modules下包含大量的辅助类，可以提高开发效率。
其中constants下有超媒体文本传输常量定义、字符集定义；convert包含JSON/XML/Java Object格式转换、
日期格式转换；utils下涵盖大部分常用的工具类，包括日期获取（Clock）、List操作（Collection3）、
ConcurrenHashSet、支持HMAC-SHA1消息签名 及 DES/AES对称加密的工具类（Cryptos，支持Hex与Base64两种编码方式）、
封装各种格式的编码解码工具类（Encodes）、异常处理工具类（Exctptions）、生成唯一性ID算法的工具类（Ids）、
数字的工具类（Numbers）、反射工具类（Reflections）、线程相关工具类等。
声明，这些辅助类大部分来源于springside4，原作者版权所有。

**单表CRUD开发说明**
如果是分页查询，请务必采用该开发方法
1、设计数据库表（例如account）
2、利用MyBatisGenerator插件在eclipse中自动生成mybatis orm文件
3、为model加上主键注解，增加分页查询的page、raws变量，及get/set方法；
	删除mapping文件的SQL语句；
	mapper类继承 MyMapper（注意extends中的泛型应该是新model）
4、开发一个service类（例如复制AccountService，将Account/account替换为新model的大小写即可）
5、开发一个Controller类（例如复制AccountController，将Account/account替换为新model的大小写即可，注意单复数形式）
6、开发两个页面，一个用于分页查询记录列表，一个用于展示记录详细信息（包括新增、修改、查询）。

**复杂查询开发说明**
非分页查询
1、设计数据库表
2、利用MyBatisGenerator插件在eclipse中自动生成mybatis orm文件
3、为model加上主键注解；在mapping文件中配置SQL语句；mapper编写查询方法
4、开发一个service类
5、开发一个Controller类

分页查询
1、设计数据库表（例如account）
2、利用MyBatisGenerator插件在eclipse中自动生成mybatis orm文件
3、为model加上主键注解，增加分页查询的page、raws变量，及get/set方法；
	删除mapping文件的SQL语句，配置复杂SQL语句；
	mapper类继承 MyMapper（注意extends中的泛型应该是新model）
4、开发一个service类
5、开发一个Controller类

**Rest API开发说明**


作者：张孟志
E-mail：104446930@qq.com
日期：2016-01-07

**补充说明**
朱吉龙    2016-04-05
1、登录控制已经重构，采用aop方式实现权限的控制
2、前台页面freemaker采用模板_layout1.ftl实现，自己的页面只需要引入<#include "_layout1.ftl">，然后可以进行重写自己的header、body、footer元素

**补充**
朱吉龙  2016-05-10
1、spring boot 集成redis缓存服务器
	<!-- spring boot集成redis 2016-05-10-->
    <dependency>  
        <groupId>org.springframework.boot</groupId>  
        <artifactId>spring-boot-starter-redis</artifactId>
    </dependency>

2、可以将其中内嵌的servlet容器Tomcat切换成Undertow，高性能非阻塞 Web 服务器，pom.xml配置如下：
	<!-- spring boot -->
	<dependency>
		<groupId>org.springframework.boot</groupId>
		<artifactId>spring-boot-starter-web</artifactId>
		<exclusions>
	        <exclusion>
	                <groupId>org.springframework.boot</groupId>
	                <artifactId>spring-boot-starter-tomcat</artifactId>
	        </exclusion>
		</exclusions>
	</dependency>
	
	<!-- 将内嵌的servlet容器tomcat换成Undertow 2016-05-12  zhujlc-->
	<dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-undertow</artifactId>
	</dependency>   
