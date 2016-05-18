<#assign base=request.contextPath />
<!DOCTYPE html>
<html>
<head>
    <base id="base" href="${base}">
    <title>国家信息维护 | baseproject2 管理系统</title>
    <link href="${base}/static/css/style.css" rel="stylesheet" type="text/css"/>
    <!-- Bootstrap -->
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

    <!-- Bootstrap Admin Theme -->
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
    <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">
    <script src="${base}/static/js/jquery-2.0.3.min.js"></script>
    <style type="text/css">
        .pageDetail {
            display: none;
        }

        .show {
            display: table-row;
        }
    </style>
    <script>
        $(function() {
            $('#list').click(function() {
                $('.pageDetail').toggleClass('show');
            });
        });

    </script>
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
       <script type="text/javascript" src="${base}/static/js/html5shiv.js"></script>
       <script type="text/javascript" src="${base}/static/js/respond.min.js"></script>
    <![endif]-->
        
</head>
<body>
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
                                    <li><a href="${base}/logout?TOKEN=${token}">退出</a></li>
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
                            <li><a href="${base}/admin/index?TOKEN=${token}">主页</a></li>
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
        
<div class="wrapper">
    <div class="middle">
        <h1 style="padding: 50px 0 20px;">国家(地区)列表</h1>

        <form action="${base}/admin/countries?TOKEN=${token}" method="post">
            <table class="gridtable" style="width:100%;">
                <tr>
                    <th>国家(地区)名称：</th>
                    <td><input type="text" name="countryname"
                               value="<#if queryParam.countryname??>${queryParam.countryname}</#if>"/></td>
                    <th>国家(地区)代码：</th>
                    <td><input type="text" name="countrycode"
                               value="<#if queryParam.countrycode??>${queryParam.countrycode}</#if>"/></td>
                    <td rowspan="2"><input type="submit" value="查询"/></td>
                </tr>
                <tr>
                    <th>页码：</th>
                    <td><input type="text" name="page" value="${page!0}"/></td>
                    <th>页面大小：</th>
                    <td><input type="text" name="rows" value="${rows!10}"/></td>
                </tr>
            </table>
        </form>
    <#if pageInfo??>
        <table class="gridtable" style="width:100%;">
            <tr>
                <th colspan="2">分页信息 - [<a href="javascript:;" id="list">展开/收缩</a>]</th>
            </tr>
            <tr class="pageDetail">
                <th style="width: 300px;">当前页号</th>
                <td>${pageInfo.pageNum}</td>
            </tr>
            <tr class="pageDetail">
                <th>页面大小</th>
                <td>${pageInfo.pageSize}</td>
            </tr>
            <tr class="pageDetail">
                <th>起始行号(>=)</th>
                <td>${pageInfo.startRow}</td>
            </tr>
            <tr class="pageDetail">
                <th>终止行号(<=)</th>
                <td>${pageInfo.endRow}</td>
            </tr>
            <tr class="pageDetail">
                <th>总结果数</th>
                <td>${pageInfo.total}</td>
            </tr>
            <tr class="pageDetail">
                <th>总页数</th>
                <td>${pageInfo.pages}</td>
            </tr>
            <tr class="pageDetail">
                <th>第一页</th>
                <td>${pageInfo.firstPage}</td>
            </tr>
            <tr class="pageDetail">
                <th>前一页</th>
                <td>${pageInfo.prePage}</td>
            </tr>
            <tr class="pageDetail">
                <th>下一页</th>
                <td>${pageInfo.nextPage}</td>
            </tr>
            <tr class="pageDetail">
                <th>最后一页</th>
                <td>${pageInfo.lastPage}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否为第一页</th>
                <td>${pageInfo.isFirstPage?c}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否为最后一页</th>
                <td>${pageInfo.isLastPage?c}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否有前一页</th>
                <td>${pageInfo.hasPreviousPage?c}</td>
            </tr>
            <tr class="pageDetail">
                <th>是否有下一页</th>
                <td>${pageInfo.hasNextPage?c}</td>
            </tr>
        </table>
        <table class="gridtable text-center" style="width:100%;">
            <#if msg??>
                <tr style="color:red;">
                    <th colspan="5">${msg}</th>
                </tr>
            </#if>
        </table>
        <table class="gridtable" style="width:100%;">
            <thead>
            <tr>
                <th colspan="4">查询结果 - [<a href="${base}/admin/countries/add?TOKEN=${token}">新增国家(地区)</a>]</th>
            </tr>
            <tr>
                <th>ID</th>
                <th>国家(地区)名</th>
                <th>国家(地区)代码</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
                <#list pageInfo.list as country>
                <tr>
                    <td>${country.id}</td>
                    <td>${country.countryname}</td>
                    <td>${country.countrycode}</td>
                    <td style="text-align:center;">[<a
                            href="${base}/admin/countries/view/${country.id}?TOKEN=${token}">修改</a>] -
                        [<a href="${base}/admin/countries/delete/${country.id}?TOKEN=${token}">删除</a>]
                    </td>
                </tr>
                </#list>
            </tbody>
        </table>
        <table class="gridtable" style="width:100%;text-align: center;">
            <tr>
                <#if pageInfo.hasPreviousPage>
                    <td>
                        <a href="${base}/admin/countries?TOKEN=${token}&page=1&rows=${pageInfo.pageSize}<#if queryParam.countryname??>&countryname=${queryParam.countryname}</#if><#if queryParam.countrycode??>&countrycode=${queryParam.countrycode}</#if>">首页</a>
                    </td>
                    <td>
                        <a href="${base}/admin/countries?TOKEN=${token}&page=${pageInfo.prePage}&rows=${pageInfo.pageSize}<#if queryParam.countryname??>&countryname=${queryParam.countryname}</#if><#if queryParam.countrycode??>&countrycode=${queryParam.countrycode}</#if>">前一页</a>
                    </td>
                </#if>
                <#list pageInfo.navigatepageNums as nav>
                    <#if nav == pageInfo.pageNum>
                        <td style="font-weight: bold;">${nav}</td>
                    </#if>
                    <#if nav != pageInfo.pageNum>
                        <td>
                            <a href="${base}/admin/countries?TOKEN=${token}&page=${nav}&rows=${pageInfo.pageSize}<#if queryParam.countryname??>&countryname=${queryParam.countryname}</#if>&countrycode=${(queryParam.countrycode)!}">${nav}</a>
                        </td>
                    </#if>
                </#list>
                <#if pageInfo.hasNextPage>
                    <td>
                        <a href="${base}/admin/countries?TOKEN=${token}&page=${pageInfo.nextPage}&rows=${pageInfo.pageSize}<#if queryParam.countryname??>&countryname=${queryParam.countryname}</#if><#if queryParam.countrycode??>&countrycode=${queryParam.countrycode}</#if>">下一页</a>
                    </td>
                    <td>
                        <a href="${base}/admin/countries?TOKEN=${token}&page=${pageInfo.pages}&rows=${pageInfo.pageSize}<#if queryParam.countryname??>&countryname=${queryParam.countryname}</#if><#if queryParam.countrycode??>&countrycode=${queryParam.countrycode}</#if>">尾页</a>
                    </td>
                </#if>
            </tr>
        </table>
    </#if>
    </div>
    <div class="push"></div>
</div>

	<script type="text/javascript" src="${base}/static/lib/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${base}/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${base}/static/js/twitter-bootstrap-hover-dropdown.min.js"></script>
    
</body>
</html>