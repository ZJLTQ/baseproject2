<#include "_layout1.ftl">

<#macro overrideHeader>
		<base id="base" href="${base}">
        <title>用户界面 | baseproject2 管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">

        <!-- Vendors -->
        <link rel="stylesheet" media="screen" href="${base}/static/vendors/jGrowl/jquery.jgrowl.css">

        <!-- Custom styles -->
        <style type="text/css">
            .pagination-container{
                margin-top: 20px;
            }
            .pagination-container-first{
                margin-top: 10px;
            }
            .pagination-container .pagination{
                margin: 0;
            }
            .notification{
                margin: 5px 0;
            }
        </style>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="${base}/static/js/html5shiv.js"></script>
           <script type="text/javascript" src="${base}/static/js/respond.min.js"></script>
        <![endif]-->
</#macro>
<@layout header=overrideHeader>
<!-- content -->
<div class="col-md-10">
	<div class="row">
		<div class="col-lg-12">
			<div class="page-header">
				<h1>UI & Interface</h1>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="bootstrap-admin-back-to-parent panel panel-default">
				<span class="text">This document is displayed in context of <a
					href="#" class="">Project name</a></span> <a class="action" href="#"><button
						type="button" class="btn btn-sm btn-primary">Back to
						project »</button></a>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="bootstrap-admin-above-content-title">
				<div class="above-content-title">This is a box above the title
					of content</div>
				<div class="above-content-title">
					<span class="name">Name:</span> <span class="value text-danger">Value</span>
				</div>
			</div>
			<div class="bootstrap-admin-content-title">
				<h1>This is a title of content</h1>
			</div>
			<div class="bootstrap-admin-below-content-title">
				<div class="below-content-title">This is a box below the title
					of content</div>
				<div class="below-content-title">
					<span class="name">Another name:</span> <span
						class="value text-primary">Another value</span>
				</div>
			</div>
			<div class="bootstrap-admin-above-content-title">above</div>
			<div
				class="bootstrap-admin-content-title bootstrap-admin-content-title-with-above-content bootstrap-admin-content-title-with-below-content bootstrap-admin-content-subtitle">
				<h2>This is a subtitle of content</h2>
			</div>
			<div class="bootstrap-admin-below-content-title">below</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="text-muted bootstrap-admin-box-title">Alerts</div>
				</div>
				<div class="bootstrap-admin-panel-content">
					<h4>Basic Alerts</h4>
					<div class="alert alert-success">
						<a class="close" data-dismiss="alert" href="#">&times;</a> <strong>Success!</strong>
						This is a success message.
					</div>
					<div class="alert alert-info">
						<a class="close" data-dismiss="alert" href="#">&times;</a> <strong>Info!</strong>
						This is an information message.
					</div>
					<div class="alert alert-warning">
						<a class="close" data-dismiss="alert" href="#">&times;</a> <strong>Warning!</strong>
						This is a warning message.
					</div>
					<div class="alert alert-danger">
						<a class="close" data-dismiss="alert" href="#">&times;</a> <strong>Error!</strong>
						This is a danger message.
					</div>

					<h4>Block Alerts</h4>
					<div class="alert alert-success">
						<a class="close" data-dismiss="alert" href="#">&times;</a>
						<h4>Success!</h4>
						Best check yo self, you're not looking too good. Nulla vitae elit
						libero, a pharetra augue. Praesent commodo cursus magna, vel
						scelerisque nisl consectetur et.
					</div>
					<div class="alert alert-info">
						<a class="close" data-dismiss="alert" href="#">&times;</a>
						<h4>Info!</h4>
						Best check yo self, you're not looking too good. Nulla vitae elit
						libero, a pharetra augue. Praesent commodo cursus magna, vel
						scelerisque nisl consectetur et.
					</div>
					<div class="alert alert-warning">
						<a class="close" data-dismiss="alert" href="#">&times;</a>
						<h4>Warning!</h4>
						Best check yo self, you're not looking too good. Nulla vitae elit
						libero, a pharetra augue. Praesent commodo cursus magna, vel
						scelerisque nisl consectetur et.
					</div>
					<div class="alert alert-danger">
						<a class="close" data-dismiss="alert" href="#">&times;</a>
						<h4>Error!</h4>
						Best check yo self, you're not looking too good. Nulla vitae elit
						libero, a pharetra augue. Praesent commodo cursus magna, vel
						scelerisque nisl consectetur et.
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="text-muted bootstrap-admin-box-title">Progress
						Bars</div>
				</div>
				<div class="bootstrap-admin-panel-content">
					<h4>Basic progress bars</h4>
					<div class="progress">
						<div class="progress-bar" role="progressbar" aria-valuenow="60"
							aria-valuemin="0" aria-valuemax="100" style="width: 60%">
							<span class="sr-only">60% Complete</span>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar progress-bar-success" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (success)</span>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar progress-bar-warning" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (warning)</span>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (info)</span>
						</div>
					</div>
					<div class="progress">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (danger)</span>
						</div>
					</div>

					<h4>Striped progress bars</h4>
					<div class="alert alert-warning">Internet Explorer doesn't
						support striped progress bars!</div>
					<div class="progress progress-striped">
						<div class="progress-bar" role="progressbar" aria-valuenow="60"
							aria-valuemin="0" aria-valuemax="100" style="width: 60%">
							<span class="sr-only">60% Complete</span>
						</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-success" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (success)</span>
						</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (info)</span>
						</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-warning" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (warning)</span>
						</div>
					</div>
					<div class="progress progress-striped">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (danger)</span>
						</div>
					</div>

					<h4>Animated progress bars</h4>
					<div class="alert alert-warning">Internet Explorer doesn't
						support animated progress bars!</div>
					<div class="progress progress-striped active">
						<div class="progress-bar" role="progressbar" aria-valuenow="60"
							aria-valuemin="0" aria-valuemax="100" style="width: 60%">
							<span class="sr-only">60% Complete</span>
						</div>
					</div>
					<div class="progress progress-striped active">
						<div class="progress-bar progress-bar-success" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (success)</span>
						</div>
					</div>
					<div class="progress progress-striped active">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (info)</span>
						</div>
					</div>
					<div class="progress progress-striped active">
						<div class="progress-bar progress-bar-warning" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (warning)</span>
						</div>
					</div>
					<div class="progress progress-striped active">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%">
							<span class="sr-only">60% Complete (danger)</span>
						</div>
					</div>

					<h4>Progress bars with value</h4>
					<div class="progress progress-with-value">
						<div class="progress-bar" role="progressbar" aria-valuenow="20"
							aria-valuemin="0" aria-valuemax="100" style="width: 20%;"></div>
						<span class="value-container"> <span class="value">20%</span>
						</span>
					</div>
					<div class="progress progress-with-value">
						<div class="progress-bar progress-bar-success" role="progressbar"
							aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
							style="width: 40%;"></div>
						<span class="value-container"> <span class="value">40%</span>
						</span>
					</div>
					<div class="progress progress-with-value">
						<div class="progress-bar progress-bar-warning" role="progressbar"
							aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
							style="width: 60%;"></div>
						<span class="value-container"> <span class="value">60%</span>
						</span>
					</div>
					<div class="progress progress-with-value">
						<div class="progress-bar progress-bar-info" role="progressbar"
							aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"
							style="width: 80%;"></div>
						<span class="value-container"> <span class="value">80%</span>
						</span>
					</div>
					<div class="progress progress-with-value">
						<div class="progress-bar progress-bar-danger" role="progressbar"
							aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"
							style="width: 100%;"></div>
						<span class="value-container"> <span class="value">100%</span>
						</span>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="text-muted bootstrap-admin-box-title">Labels &
						Badges</div>
				</div>
				<div class="bootstrap-admin-panel-content">
					<h4>Available labels</h4>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Labels</th>
								<th>Markup</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span class="label label-default">Default</span></td>
								<td><code>&lt;span class="label label-default"&gt;</code></td>
							</tr>
							<tr>
								<td><span class="label label-primary">Primary</span></td>
								<td><code>&lt;span class="label label-primary"&gt;</code></td>
							</tr>
							<tr>
								<td><span class="label label-success">Success</span></td>
								<td><code>&lt;span class="label label-success"&gt;</code></td>
							</tr>
							<tr>
								<td><span class="label label-info">Info</span></td>
								<td><code>&lt;span class="label label-info"&gt;</code></td>
							</tr>
							<tr>
								<td><span class="label label-warning">Warning</span></td>
								<td><code>&lt;span class="label label-warning"&gt;</code></td>
							</tr>
							<tr>
								<td><span class="label label-danger">Danger</span></td>
								<td><code>&lt;span class="label label-danger"&gt;</code></td>
							</tr>
						</tbody>
					</table>

					<h4>Thin labels (available for all examples above)</h4>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Labels</th>
								<th>Markup</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><span
									class="label label-primary bootstrap-admin-label-thin">Primary</span>
								</td>
								<td><code style="white-space: initial;">&lt;span
										class="label label-primary bootstrap-admin-label-thin"&gt;</code></td>
							</tr>
							<tr>
								<td><span
									class="label label-success bootstrap-admin-label-thin">Success</span>
								</td>
								<td><code style="white-space: initial;">&lt;span
										class="label label-success bootstrap-admin-label-thin"&gt;</code></td>
							</tr>
						</tbody>
					</table>

					<h4 style="margin-top: 20px">Badges</h4>
					<ul class="nav nav-pills nav-stacked" style="max-width: 260px;">
						<li class="active"><a href="#"> <span
								class="badge pull-right">42</span> Home
						</a></li>
						<li><a href="#">Profile</a></li>
						<li><a href="#"> <span class="badge pull-right">3</span>
								Messages
						</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="text-muted bootstrap-admin-box-title">Modals &
						Notifications</div>
				</div>
				<div class="bootstrap-admin-panel-content">
					<a href="#myModal" data-toggle="modal" class="btn btn-primary">Modal
						dialog</a> <a href="#myAlert" data-toggle="modal"
						class="btn btn-danger">Alert</a>

					<div id="myModal" class="modal fade" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 id="myModalLabel" class="modal-title">Modal title</h4>
								</div>
								<div class="modal-body">
									<p>Lorem ipsum dolor sit amet...</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary">Save
										changes</button>
								</div>
							</div>
						</div>
					</div>

					<div id="myAlert" class="modal fade" tabindex="-1" role="dialog"
						aria-labelledby="myModalAlertLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 id="myModalAlertLabel" class="modal-title">Modal title</h4>
								</div>
								<div class="modal-body">
									<p>Lorem ipsum dolor sit amet...</p>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary"
										data-dismiss="modal">Confirm</button>
									<button type="button" class="btn btn-default">Cancel</button>
								</div>
							</div>
						</div>
					</div>

					<div style="margin-top: 20px;">
						<button class="btn btn-default notification" id="notification">Notification</button>
						<br />
						<button class="btn btn-default notification"
							id="notification-sticky">Sticky Notification</button>
						<br />
						<button class="btn btn-default notification"
							id="notification-header">Notification With Header</button>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="text-muted bootstrap-admin-box-title">Tabs</div>
				</div>
				<div class="bootstrap-admin-panel-content">
					<ul class="nav nav-tabs">
						<li><a href="#">Tab 1</a></li>
						<li class="active"><a href="#">Tab 2</a></li>
						<li><a href="#">Tab 3</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="text-muted bootstrap-admin-box-title">Tooltips,
						Popovers & Pagination</div>
				</div>
				<div class="bootstrap-admin-panel-content">
					<div style="padding: 12px 20px 40px;">
						<button class="btn btn-default tooltip-top"
							data-original-title="Tooltip in top">Top</button>
						<button class="btn btn-default tooltip-left"
							data-original-title="Tooltip in left">Left</button>
						<button class="btn btn-default tooltip-right"
							data-original-title="Tooltip in right">Right</button>
						<button class="btn btn-default tooltip-bottom"
							data-original-title="Tooltip in bottom">Bottom</button>
					</div>

					<div style="padding-left: 50%; padding-bottom: 20px;">
						<button class="btn btn-default popover-top"
							data-original-title="Popover in top">Top</button>
						<button class="btn btn-default popover-left"
							data-original-title="Popover in left">Left</button>
					</div>

					<div style="padding-left: 10%;">
						<button class="btn btn-default popover-right"
							data-original-title="Popover in right">Right</button>
						<button class="btn btn-default popover-bottom"
							data-original-title="Popover in bottom">Bottom</button>
					</div>
				</div>
			</div>
		</div>

		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="text-muted bootstrap-admin-box-title">Pagination</div>
				</div>
				<div class="bootstrap-admin-panel-content">
					<div class="pagination-container pagination-container-first">
						<ul class="pagination pagination-lg">
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li class="disabled"><span>...</span></li>
							<li><a href="#">10</a></li>
							<li><a href="#">11</a></li>
							<li><a href="#">12</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>

					<div class="pagination-container">
						<ul class="pagination">
							<li><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li class="disabled"><span>...</span></li>
							<li><a href="#">10</a></li>
							<li><a href="#">11</a></li>
							<li><a href="#">12</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>

					<div class="pagination-container">
						<ul class="pagination pagination-sm">
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li class="disabled"><span>...</span></li>
							<li><a href="#">10</a></li>
							<li><a href="#">11</a></li>
							<li><a href="#">12</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</@layout>

        <script type="text/javascript" src="${base}/static/lib/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/twitter-bootstrap-hover-dropdown.min.js"></script>
        <script type="text/javascript" src="${base}/static/js/bootstrap-admin-theme-change-size.js"></script>
        <script type="text/javascript" src="${base}/static/vendors/jGrowl/jquery.jgrowl.js"></script>

        <script type="text/javascript">
	        $(document).ready(function() {
				$("#yhjm").addClass("active");
			});
            $(function() {
                $('.tooltip').tooltip();
                $('.tooltip-left').tooltip({placement: 'left'});
                $('.tooltip-right').tooltip({placement: 'right'});
                $('.tooltip-top').tooltip({placement: 'top'});
                $('.tooltip-bottom').tooltip({placement: 'bottom'});

                $('.popover-left').popover({placement: 'left', trigger: 'hover'});
                $('.popover-right').popover({placement: 'right', trigger: 'hover'});
                $('.popover-top').popover({placement: 'top', trigger: 'hover'});
                $('.popover-bottom').popover({placement: 'bottom', trigger: 'hover'});

                $('.notification').click(function() {
                    var $id = $(this).attr('id');
                    switch ($id) {
                        case 'notification-sticky':
                            $.jGrowl("Stick this!", {sticky: true});
                            break;

                        case 'notification-header':
                            $.jGrowl("A message with a header", {header: 'Important'});
                            break;

                        default:
                            $.jGrowl("Hello world!");
                            break;
                    }
                });
            });
        </script>
