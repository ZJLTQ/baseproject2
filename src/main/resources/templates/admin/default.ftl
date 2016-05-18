<#assign base=request.contextPath />
<!DOCTYPE html>
<html>
    <head>
    	<base id="base" href="${base}">
        <title>默认模板 | baseproject2 管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">

        <!-- Vendors -->
        <!-- (...) -->

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="${base}/static/js/html5shiv.js"></script>
           <script type="text/javascript" src="${base}/static/js/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="bootstrap-admin-with-small-navbar">
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
                                        <li><a href="${base}/logout?TOKEN=${(token)!}">退出</a></li>
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
                        <li>
                            <a href="${base}/admin/index?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 关于</a>
                        </li>
                        <li> <!-- <li class="disabled"> 可变灰，不可用 -->
                            <a href="${base}/admin/dashboard?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 仪表盘</a>
                        </li>
                        <li>
                            <a href="${base}/admin/forms?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
                        </li>
                        <li>
                            <a href="${base}/admin/tables?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 表格</a>
                        </li>
                        <li>
                            <a href="${base}/admin/btnicons?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 按钮 &amp; 图标</a>
                        </li>
                        <li>
                            <a href="${base}/admin/wysiwygeditors?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> WYSIWYG 编辑器</a>
                        </li>
                        <li>
                            <a href="${base}/admin/ui?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> 用户界面</a>
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-chevron-down"></i>系统设置</a>
                            <ul class="nav navbar-collapse bootstrap-admin-navbar-side">
                                <li><a href="${base}/admin/countries?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> --国家信息维护</a></li>
                                <li><a href="${base}/admin/accounts?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> --用户信息维护</a></li>
                            </ul>
                        </li>
                        <li class="active">
                            <a href="${base}/admin/syslogs?TOKEN=${(token)!}"><span class="badge pull-right">4,231</span> 系统日志</a>
                        </li>
                    </ul>
                </div>


                <!-- content -->
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="page-header">
                                <h1>Page title</h1>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">Title of the box</div>
                                </div>
                                <div class="bootstrap-admin-panel-content text-muted" style="padding: 60px 0; text-align: center">
                                    Place your content here
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->
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

        <script type="text/javascript" src="${base}/static/lib/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/bootstrap-admin-theme-change-size.js"></script>
    </body>
</html>
