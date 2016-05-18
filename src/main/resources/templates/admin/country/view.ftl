<#assign base=request.contextPath />
<!DOCTYPE html>
<html>
<head>
    <base id="base" href="${base}">
    <title>国家(地区)信息 | baseproject2 管理系统</title>
    <link href="${request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap -->
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

    <!-- Bootstrap Admin Theme -->
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
       <script type="text/javascript" src="${base}/static/js/html5shiv.js"></script>
       <script type="text/javascript" src="${base}/static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body style="margin-top:50px;overflow: hidden;">
	<!-- small navbar -->
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
                                    <li><a href="${base}/logout?TOKEN=${(TOKEN)!}">退出</a></li>
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
                            <li><a href="${base}/admin/index?TOKEN=${(TOKEN)!}">主页</a></li>
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
        
<form action="${request.contextPath}/admin/countries/save?TOKEN=${(TOKEN)!}" method="post">
    <input type="hidden" name="id" value="<#if country.id??>${country.id}</#if>"/>
    <table class="gridtable" style="width:800px;">
        <tr>
            <th colspan="5">国家(地区)信息 - [<a href="${request.contextPath}/admin/countries?TOKEN=${(TOKEN)!}">返回</a>]</th>
        </tr>
        <tr>
            <th>国家(地区)名称：</th>
            <td><input type="text" name="countryname" value="<#if country.countryname??>${country.countryname}</#if>"/>
            </td>
            <th>国家(地区)代码：</th>
            <td><input type="text" name="countrycode" value="<#if country.countrycode??>${country.countrycode}</#if>"/>
            </td>
            <td><input type="submit" value="保存"/></td>
        </tr>
    <#if msg??>
        <tr style="color:#00ba00;">
            <th colspan="5">${msg}</th>
        </tr>
    </#if>
    </table>
</form>

	<script type="text/javascript" src="${base}/static/lib/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${base}/static/js/twitter-bootstrap-hover-dropdown.min.js"></script>
    
</body>
</html>
