<#assign base=request.contextPath />
<!DOCTYPE html>
<html>
    <head>
    	<base id="base" href="${base}">
        <title>用户信息维护 | baseproject2 管理系统</title>
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
                                <li class="active"><a href="${base}/admin/accounts?TOKEN=${(token)!}"><i class="glyphicon glyphicon-chevron-right"></i> --用户信息维护</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="${base}/admin/syslogs?TOKEN=${(token)!}"><span class="badge pull-right">4,231</span> 系统日志</a>
                        </li>
                    </ul>
                </div>


                <!-- content -->
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="page-header">
                                <h1>账户列表管理</h1>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="text-center" style="padding: 10px 20px 20px;">						
						    <div class="row">
								<div class="offset6">
									<form class="form-search form-group" action="${base}/admin/accounts?TOKEN=${(token)!}" method="post">
									 	<label>Email：</label> <input type="text" name="email"   class="input-medium search-query"  value="${(queryParam.email)!}"> 
									 	<label>姓名：</label> <input type="text" name="name"   class="input-medium search-query"  value="${(queryParam.name)!}"> 
									    <button type="submit" class="btn" id="search_btn">查找</button>
								    </form>
							    </div>
							</div>
							
							<#if msg??>
								<div id="message" class="alert alert-success"><button data-dismiss="alert" class="close">×</button>${msg}</div>
						    </#if>
	    
                            <div class="panel panel-default">
                                <div class="panel-heading text-left">
                                    <div class="text-muted bootstrap-admin-box-title">查询结果 - [<a href="${base}/admin/accounts/add?TOKEN=${(token)!}">新增</a>]</div>
                                </div>
                                
								<#if pageInfo??>
						        <table id="contentTable" class="table bootstrap-admin-table-with-actions">
						            <thead>
										<tr>
											<th>ID</th>
											<th>姓名</th>
											<th>Email</th>
											<th>注册日期</th>
											<th>操作</th>
										</tr>
									</thead>		
						            
						            <tbody>
						                <#list pageInfo.list as account>
						                <tr>
						                    <td>${account.id}</td>
						                    <td>${account.name}</td>
						                    <td>${account.email}</td>
						                    <td>${(account.registerDate?string("yyyy-MM-dd HH:mm:ss"))!''}</td>
						                    <td class="actions">
						                    	<a href="${base}/admin/accounts/view/${account.id}?TOKEN=${(token)!}">
	                                                <button class="btn btn-sm btn-primary">
	                                                    <i class="glyphicon glyphicon-pencil"></i>
	                                                    	修改
	                                                </button>
	                                            </a>
	                                            <a href="${base}/admin/accounts/delete/${account.id}?TOKEN=${(token)!}">
	                                                <button class="btn btn-sm btn-danger">
	                                                    <i class="glyphicon glyphicon-trash"></i>
	                                                    	删除
	                                                </button>
	                                            </a>
						                    </td>
						                </tr>
						                </#list>
						            </tbody>
						        </table>
						    
								<table class="table table-striped table-bordered table-condensed">
						            <tr>
						                <#if pageInfo.hasPreviousPage>
						                    <td>
						                        <a href="${base}/admin/accounts?TOKEN=${(token)!}&page=1&rows=${pageInfo.pageSize}&name=${(queryParam.name)!}&email=${(queryParam.email)!}">首页</a>
						                    </td>
						                    <td>
						                        <a href="${base}/admin/accounts?TOKEN=${(token)!}&page=${pageInfo.prePage}&rows=${pageInfo.pageSize}&name=${(queryParam.name)!}&email=${(queryParam.email)!}">前一页</a>
						                    </td>
						                </#if>
						                <ul class="nav navbar-nav">
						                <#list pageInfo.navigatepageNums as nav>
						                    <#if nav == pageInfo.pageNum>
						                        <td class="active"><strong>${nav}</strong></td>
						                    </#if>
						                    <#if nav != pageInfo.pageNum>
						                        <td>
						                            <a href="${base}/admin/accounts?TOKEN=${(token)!}&page=${nav}&rows=${pageInfo.pageSize}&name=${(queryParam.name)!}&email=${(queryParam.email)!}">${nav}</a>
						                        </td>
						                    </#if>
						                </#list>
						                </ul>
						                <#if pageInfo.hasNextPage>
						                    <td>
						                        <a href="${base}/admin/accounts?TOKEN=${(token)!}&page=${pageInfo.nextPage}&rows=${pageInfo.pageSize}&name=${(queryParam.name)!}&email=${(queryParam.email)!}">下一页</a>
						                    </td>
						                    <td>
						                        <a href="${base}/admin/accounts?TOKEN=${(token)!}&page=${pageInfo.pages}&rows=${pageInfo.pageSize}&name=${(queryParam.name)!}&email=${(queryParam.email)!}">尾页</a>
						                    </td>
						                </#if>
						            </tr>
						        </table>					        
						    </#if>
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
