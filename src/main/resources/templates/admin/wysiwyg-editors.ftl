<#include "_layout1.ftl">

<#macro overrideHeader>
	<base id="base" href="${base}">
        <title>WYSIWYG 编辑器 | baseproject2 管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">

        <!-- Vendors -->
        <link rel="stylesheet" media="screen" href="${base}/static/vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/stylesheets/bootstrap-wysihtml5/core-b3.css">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
           <script type="text/javascript" src="${base}/static/js/html5shiv.js"></script>
           <script type="text/javascript" src="${base}/static/js/respond.min.js"></script>
        <![endif]-->
</#macro>
<@layout header=overrideHeader>
		<div class="col-md-10">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="page-header">
                                <h1>WYSIWYG Editors</h1>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">CKEditor Standard</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <textarea id="ckeditor_standard"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">CKEditor Full</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <textarea id="ckeditor_full"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">TinyMCE Basic</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <textarea id="tinymce_basic"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">TinyMCE Full</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <textarea id="tinymce_full"></textarea>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="text-muted bootstrap-admin-box-title">Bootstrap WYSIWYG</div>
                                </div>
                                <div class="bootstrap-admin-panel-content">
                                    <textarea id="bootstrap-editor" class="form-control" placeholder="Enter text..." style="height: 200px"></textarea>
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

        <script type="text/javascript" src="${base}/static/vendors/ckeditor/ckeditor.js"></script>
        <script type="text/javascript" src="${base}/static/vendors/ckeditor/adapters/jquery.js"></script>

        <script type="text/javascript" src="${base}/static/vendors/tinymce/js/tinymce/tinymce.min.js"></script>

        <script type="text/javascript" src="${base}/static/vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/javascripts/bootstrap-wysihtml5/wysihtml5.js"></script>
        <script type="text/javascript" src="${base}/static/vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/javascripts/bootstrap-wysihtml5/core-b3.js"></script>

        <script type="text/javascript">
	        $(document).ready(function() {
				$("#fwbk").addClass("active");
			});
            $(function() {
                // CKEditor Standard
                $('textarea#ckeditor_standard').ckeditor({
                    height: '150px',
                    toolbar: [
                        {name: 'document', items: ['Source', '-', 'NewPage', 'Preview', '-', 'Templates']}, // Defines toolbar group with name (used to create voice label) and items in 3 subgroups.
                        ['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Undo', 'Redo'], // Defines toolbar group without name.
                        {name: 'basicstyles', items: ['Bold', 'Italic']}
                    ]
                });

                // CKEditor Full
                $('textarea#ckeditor_full').ckeditor({
                    height: '200px'
                });

                // TinyMCE Basic
                tinymce.init({
                    selector: "#tinymce_basic",
                    plugins: [
                        "advlist autolink lists link image charmap print preview anchor",
                        "searchreplace visualblocks code fullscreen",
                        "insertdatetime media table contextmenu paste"
                    ],
                    toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
                });

                // TinyMCE Full
                tinymce.init({
                    selector: "#tinymce_full",
                    plugins: [
                        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
                        "searchreplace wordcount visualblocks visualchars code fullscreen",
                        "insertdatetime media nonbreaking save table contextmenu directionality",
                        "emoticons template paste textcolor"
                    ],
                    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
                    toolbar2: "print preview media | forecolor backcolor emoticons",
                    image_advtab: true,
                    templates: [
                        {title: 'Test template 1', content: 'Test 1'},
                        {title: 'Test template 2', content: 'Test 2'}
                    ]
                });
            });

            // Bootstrap
            $('#bootstrap-editor').wysihtml5({
                stylesheets: [
                    '${base}/static/vendors/bootstrap-wysihtml5-rails-b3/vendor/assets/stylesheets/bootstrap-wysihtml5/wysiwyg-color.css'
                ]
            });
        </script>
