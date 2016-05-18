<#include "_layout1.ftl">
<@layout header=defaultHeader>
                <!-- content -->
                <div class="col-md-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="page-header bootstrap-admin-content-title">
                                <h1>baseporject2 管理系统</h1>                                
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">项目构建参考</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <ul>
                                        <li><a href="https://github.com/abel533/MyBatis-Spring-Boot" target="_blank">MyBatis-Spring-Boot</a></li>
                                        <li><a href="https://github.com/springside/springside4" target="_blank">springside4</a></li>
                                        <li><a href="https://github.com/meritoo/Bootstrap-3-Admin-Theme" target="_blank">Bootstrap-3-Admin-Theme</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">项目源码</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <ul>
                                        <li>
                                            <a href="https://github.com/zhangmengzhi/baseproject2" target="_blank">Github 仓库</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">说明：</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <p>The Apache License</p>
                                    <p>作者：张孟志</p>
									<p>E-mail：104446930@qq.com</p>
									<p>日期：2016-01-07</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                </div>


        
</@layout>
<script type="text/javascript" src="${base}/static/lib/jquery/jquery.min.js"></script>
      <script type="text/javascript" src="${base}/static/js/bootstrap.min.js"></script>
      <script type="text/javascript" src="${base}/static/js/twitter-bootstrap-hover-dropdown.min.js"></script>
      <script type="text/javascript">
	$(document).ready(function() {
		$("#gy").addClass("active");
	});
</script>