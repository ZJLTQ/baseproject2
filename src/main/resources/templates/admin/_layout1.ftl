<#assign base=request.contextPath />
<!DOCTYPE html>
<html>
<#macro defaultHeader>
    	<base id="base" href="${base}">
        <title>控制台 | baseproject2 管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">

		
        <!-- Custom styles -->
        <style type="text/css">
            @font-face {
                font-family: Ubuntu;
                src: url('${base}/fonts/Ubuntu-Regular.ttf');
            }
            .bs-docs-masthead{
                background-color: #6f5499;
                background-image: linear-gradient(to bottom, #563d7c 0px, #6f5499 100%);
                background-repeat: repeat-x;
            }
            .bs-docs-masthead{
                padding: 0;
            }
            .bs-docs-masthead h1{
                color: #fff;
                font-size: 40px;
                margin: 0;
                padding: 34px 0;
                text-align: center;
            }
            .bs-docs-masthead a:hover{
                text-decoration: none;
            }
            .meritoo-logo a{
                background-color: #fff;
                border: 1px solid rgba(66, 139, 202, 0.4);
                display: block;
                font-family: Ubuntu;
                padding: 22px 0;
                text-align: center;
            }
            .meritoo-logo a,
            .meritoo-logo a:hover,
            .meritoo-logo a:focus{
                text-decoration: none;
            }
            .meritoo-logo a img{
                display: block;
                margin: 0 auto;
            }
            .meritoo-logo a span{
                color: #4e4b4b;
                font-size: 18px;
            }
            .row-urls{
                margin-top: 4px;
            }
            .row-urls .col-md-6{
                text-align: center;
            }
            .row-urls .col-md-6 a{
                font-size: 14px;
            }
        </style>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="${base}/static/js/html5shiv.js"></script>
           <script type="text/javascript" src="${base}/static/js/respond.min.js"></script>
        <![endif]-->
    
</#macro>
<#macro defaultFooter>
	<div class="navbar navbar-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <footer role="contentinfo">
                        <p class="left">baseproject2</p>
                        <p class="right">&copy; 2016 张孟志</p>
                    </footer>
                </div>
            </div>
        </div>
     </div>
</#macro>
 
<#macro layout header=defaultHeader footer=defaultFooter>
<@header />
	<body class="bootstrap-admin-with-small-navbar">
        <div class="container">
            <!-- left, vertical navbar & content -->
            <div class="row">

				<!-- 页面最上面的导航栏 -->
				<nav class="navbar navbar-default navbar-fixed-top bootstrap-admin-navbar-sm" role="navigation">
		            <div class="container">
		                <div class="row">
		                    <div class="col-lg-12">
		                        <div class="collapse navbar-collapse">
		                            <ul class="nav navbar-nav navbar-left bootstrap-admin-theme-change-size">
		                                <li class="text"></li>
		                                <li></li>
		                            </ul>
		                            <ul class="nav navbar-nav navbar-right">
		                                <li>
		                                    <a href="#">消息 <i class="glyphicon glyphicon-bell"></i></a>
		                                </li>
		                                <li class="dropdown">
		                                    <a href="#" role="button" class="dropdown-toggle" data-hover="dropdown"> <i class="glyphicon glyphicon-user"></i> 用户名 <i class="caret"></i></a>
		                                    <ul class="dropdown-menu">
		                                        <li><a href="#">设置</a></li>
		                                        <li role="presentation" class="divider"></li>
		                                        <li><a href="${base}/admin/logout?TOKEN=${(token)!}">退出</a></li>
		                                    </ul>
		                                </li>
		                            </ul>
		                        </div>
		                    </div>
		                </div>
		            </div>
		        </nav>
		
		        <!-- main / large navbar -->
		        <nav class="navbar navbar-default navbar-fixed-top bootstrap-admin-navbar bootstrap-admin-navbar-under-small" role="navigation">
		            <div class="container">
		                <div class="row">
		                    <div class="col-lg-12">
		                        <div class="navbar-header">
		                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".main-navbar-collapse">
		                                <span class="sr-only">Toggle navigation</span>
		                                <span class="icon-bar"></span>
		                                <span class="icon-bar"></span>
		                                <span class="icon-bar"></span>
		                            </button>
		                            <div class="navbar-brand">管理面板</div>
		                        </div>
		                        <div class="collapse navbar-collapse main-navbar-collapse">
		                            <ul class="nav navbar-nav">
		                                <li><a href="${base}/admin/index?TOKEN=${(token)!}">主页</a></li>
		                                <li><a href="#">帮助</a></li>
		                                <li class="dropdown">
		                                    <a href="#" class="dropdown-toggle" data-hover="dropdown">说明 <b class="caret"></b></a>
		                                    <ul class="dropdown-menu">
		                                        <li role="presentation" class="dropdown-header">第一组说明</li>
		                                        <li><a href="#">干点什么</a></li>
		                                        <li><a href="#">还可以干点什么</a></li>
		                                        <li><a href="#">最终干了什么</a></li>
		                                        <li role="presentation" class="divider"></li>
		                                        <li role="presentation" class="dropdown-header">第二组说明</li>
		                                        <li><a href="#">好好干</a></li>
		                                        <li><a href="#">还可以好好干</a></li>
		                                    </ul>
		                                </li>
		                            </ul>
		                        </div><!-- /.navbar-collapse -->
		                    </div>
		                </div>
		            </div><!-- /.container -->
		        </nav>
		
		        <div class="container">
		            <!-- left, vertical navbar & content -->
		            <div class="row">
		                <!-- left, vertical navbar -->
		                <div class="col-md-2 bootstrap-admin-col-left">
		                    <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
		                        <li id="gy">
		                            <a href="${base}/admin/index?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 关于</a>
		                        </li>
		                        <li id="ybp"> <!-- <li class="disabled"> 可变灰，不可用 -->
		                            <a href="${base}/admin/dashboard?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 仪表盘</a>
		                        </li>
		                        <li id="bd">
		                            <a href="${base}/admin/forms?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
		                        </li>
		                        <li id="bg">
		                            <a href="${base}/admin/tables?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 表格</a>
		                        </li>
		                        <li id="antb">
		                            <a href="${base}/admin/btnicons?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 按钮 &amp; 图标</a>
		                        </li>
		                        <li id="fwbk">
		                            <a href="${base}/admin/wysiwygeditors?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> WYSIWYG 编辑器</a>
		                        </li>
		                        <li id="yhjm">
		                            <a href="${base}/admin/ui?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 用户界面</a>
		                        </li>
		                        <li>
		                            <a href="#"><i class="dropdown-toggle glyphicon glyphicon-chevron-down "></i>应用样例</a>
		                            <ul class="nav navbar-collapse bootstrap-admin-navbar-side">
		                                <li id="gjxx"><a href="${base}/admin/countries?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> --国家信息维护</a></li>
		                                <li id="yhxx"><a href="${base}/admin/accounts?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> --用户信息维护</a></li>
		                            </ul>
		                        </li>
		                        <li id="xtrz">
		                            <a href="${base}/admin/syslogs?TOKEN=${(token)!}"><span class="badge pull-right">4,231</span> 系统日志</a>
		                        </li>
		                    </ul>
		                </div>
		
		
		                <!-- content 这里是每个页面自己的具体内容 -->
		             	<#nested>
		             </div>
		        </div>
			</div>
        </div>
    	<@footer />
    </body>

</#macro>
</html>
