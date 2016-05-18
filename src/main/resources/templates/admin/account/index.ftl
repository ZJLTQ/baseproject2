<#include "../_layout1.ftl">
<#macro overrideHeader>
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
</#macro>
<@layout header=overrideHeader>
	
				<!-- 具体页面自己的内容 -->
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
		
		<script type="text/javascript" src="${base}/static/lib/jquery/jquery.min.js"></script>
    	<script type="text/javascript" src="${base}/static/js/bootstrap.min.js"></script>
    	<script type="text/javascript" src="${base}/static/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/bootstrap-admin-theme-change-size.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#yhxx").addClass("active");
			});
		</script>			
</@layout>

