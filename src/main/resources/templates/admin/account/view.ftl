<#assign base=request.contextPath />
<!DOCTYPE html>
<html>
    <head>
    	<base id="base" href="${base}">
        <title>用户信息 | baseproject2 管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">

        <!-- datetimepicker -->
		<link href="${base}/static/css/bootstrap-datetimepicker.min.css" type="text/css" rel="stylesheet" media="screen"/>
		<link href="${base}/static/css/default.min.css" rel="stylesheet" type="text/css"/>	
		<link href="${base}/static/lib/jquery-validation/1.11.1/validate.css" rel="stylesheet" type="text/css"/>

		<!-- js -->
        <script type="text/javascript" src="${base}/static/lib/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${base}/static/lib/jquery-validation/1.11.1/jquery.validate.min.js"></script>
		<script type="text/javascript" src="${base}/static/lib/jquery-validation/1.11.1/messages_bs_zh.js"></script>
		<script type="text/javascript" src="${base}/static/lib/bootstrap/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript" src="${base}/static/lib/bootstrap/locales/bootstrap-datetimepicker.zh-CN.js"></script>
		
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="${base}/static/js/html5shiv.js"></script>
           <script type="text/javascript" src="${base}/static/js/respond.min.js"></script>
        <![endif]-->
        
        <style type="text/css">
			#register-form{
			    border: 1px solid rgb(197, 197, 197);
			    width: 800px;
			    margin: auto;
			    border-image: none;
			    padding: 30px;
			    border-radius: 3px;
			}		
		</style>

		<script>
			$(document).ready(function() {
				// 手机号码验证
				jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					return this.optional(element) || (length == 11 && /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
				}, "请正确填写您的手机号码。");
			
				// 电话号码验证
				jQuery.validator.addMethod("isTel", function(value, element) {
					var tel = /^(\d{3,4}-)?\d{7,8}$/g; // 区号－3、4位 号码－7、8位
					return this.optional(element) || (tel.test(value));
				}, "请正确填写您的电话号码。");
				
				// 匹配密码，以字母开头，长度在6-12之间，必须包含数字和特殊字符。
				jQuery.validator.addMethod("isPwd", function(value, element) {
					var str = value;
					if (str.length < 6 || str.length > 18)
						return false;
					if (!/^[a-zA-Z]/.test(str))
						return false;
					if (!/[0-9]/.test(str))
						return fasle;
					return this.optional(element) || /[^A-Za-z0-9]/.test(str);
				}, "以字母开头，长度在6-12之间，必须包含数字和特殊字符。");
		
				//为register-form注册validate函数
				$("#register-form").validate({
					rules: {
						email: {
							required:true, 
	  						email:true,
							remote: "${base}/api/accounts/checkEmail?action=${(action)!}"
						},
						// name:"required",
						password: {
							required:true,
							isPwd : true
						},
						confirm_password : {
							required : true,
							isPwd : true,
							equalTo : "#password"
						}
					},
					messages: {
						email: {
							required: "<font color=red>请输入一个Email地址</fond>", 
	  						email: "请输入一个有效的Email地址",
	  						remote: "该Email已注册，请登录。"
						},
						password: {
							required : "请输入密码",
							minlength : jQuery.format("密码不能小于{0}个字 符")
						},
						confirm_password : {
							required : "请输入确认密码",
							minlength : "确认密码不能小于5个字符",
							equalTo : "两次输入密码不一致不一致"
						}
					},
					errorContainer: "#messageBox",
					errorPlacement: function(error, element) {
						if ( element.is(":checkbox") )
							error.appendTo(element.parent().next());
						else
							error.insertAfter(element);
					}
				});
				
			});
		</script>
	
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

        <div class="container">
            <!-- left, vertical navbar & content -->
            <div class="row">
                <!-- left, vertical navbar -->
                <div class="col-md-2 bootstrap-admin-col-left">
                    <ul class="nav navbar-collapse collapse bootstrap-admin-navbar-side">
                        <li>
                            <a href="${base}/admin/index?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> 关于</a>
                        </li>
                        <li> <!-- <li class="disabled"> 可变灰，不可用 -->
                            <a href="${base}/admin/dashboard?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> 仪表盘</a>
                        </li>
                        <li>
                            <a href="${base}/admin/forms?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> 表单</a>
                        </li>
                        <li>
                            <a href="${base}/admin/tables?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> 表格</a>
                        </li>
                        <li>
                            <a href="${base}/admin/btnicons?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> 按钮 &amp; 图标</a>
                        </li>
                        <li>
                            <a href="${base}/admin/wysiwygeditors?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> WYSIWYG 编辑器</a>
                        </li>
                        <li>
                            <a href="${base}/admin/ui?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> 用户界面</a>
                        </li>
                        <li>
                            <a href="#"><i class="glyphicon glyphicon-chevron-down"></i>系统设置</a>
                            <ul class="nav navbar-collapse bootstrap-admin-navbar-side">
                                <li><a href="${base}/admin/countries?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> --国家信息维护</a></li>
                                <li class="active"><a href="${base}/admin/accounts?TOKEN=${(TOKEN)!}"><i class="glyphicon glyphicon-chevron-right"></i> --用户信息维护</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="${base}/admin/syslogs?TOKEN=${(TOKEN)!}"><span class="badge pull-right">4,231</span> 系统日志</a>
                        </li>
                    </ul>
                </div>


                <!-- content -->
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="page-header">
                                <h1>账户信息</h1>
                            </div>
                        </div>
                    </div>

                    <#if msg??>
						<div id="message" class="alert alert-warning"><button data-dismiss="alert" class="close">×</button>${msg}</div>
					</#if>
					
					<div class="row">
						<form id="register-form" role="form" action="${base}/admin/accounts/save?TOKEN=${(TOKEN)!}" method="post" class="form-horizontal">
					    	<input type="hidden" name="id" value="${(account.id)!}"/>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="email">E-Mail：</label>
								<div class="col-sm-10">
									<input class="form-control" id="email" name="email" value="${(account.email)!}"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="name">用户名：</label>
								<div class="col-sm-10">
									<input class="form-control" id="name" name="name" value="${(account.name)!}"/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="password">密码：</label>
								<div class="col-sm-10">
									<input class="form-control" id="password" name="password" type="password" value=""/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="confirm_password">确认密码：</label>
								<div class="col-sm-10">
									<input class="form-control" id="confirm_password" name="confirm_password" type="password" />
								</div>
							</div>
							<div class="control-group">
								<label for="registerDate" class="col-sm-2 control-label">注册时间:</label>
								<div class="input-group date form_datetime col-sm-10" data-date-format="yyyy-MM-dd HH:mm:ss" data-link-field="registerDate">
									<input type="text" id="registerDate" name="registerDate" value="${(account.registerDate?string("yyyy-MM-dd HH:mm:ss"))!''}" class="form-control"/>
									<span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
									<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
								</div>
							</div>
							<div class="control-group">
								<label for="registerDate" class="col-sm-2 control-label"></label>
								<p class="help-block class="col-sm-10"">这里是块级帮助文本。</p>
							</div>
							<div class="form-group">
								<div class="col-md-offset-2 col-md-10">
									<button type="submit" class="btn btn-primary btn-sm">保存</button>
									<button type="reset" class="btn btn-primary btn-sm">重置</button>
									<button type="button" class="btn btn-primary btn-sm" onclick="location='${base}/admin/accounts?TOKEN=${(TOKEN)!}' ">取消</button>
								</div>
							</div>
							<input type="hidden" name="groupId" value="${(account.groupId)!}"/>
						</form>
					</div>
	
					<script type="text/javascript">
					    $('.form_datetime').datetimepicker({
					        language:  'zh-CN',
					        weekStart: 1,
					        todayBtn:  1,
							autoclose: 1,
							todayHighlight: 1,
							startView: 2,
							forceParse: 0,
					        showMeridian: 1
					    });
					</script>

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

        <script type="text/javascript" src="${base}/static/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/bootstrap-admin-theme-change-size.js"></script>
    </body>
</html>
