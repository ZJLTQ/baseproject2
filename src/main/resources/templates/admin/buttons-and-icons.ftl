<#include "_layout1.ftl">
<#macro overrideHeader>
		<base id="base" href="${base}">
        <title>按钮 &amp; 图标 | baseproject2 管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Bootstrap -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap.min.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme.min.css">

        <!-- Bootstrap Admin Theme -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme.css">
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-admin-theme-change-size.css">

        <!-- Bootstrap Switch (the On-Off buttons) -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <link rel="stylesheet" href="${base}/static/vendors/bootstrap-switch/build/css/bootstrap3/bootstrap-switch.min.css">
        <link rel="stylesheet" href="${base}/static/css/bootstrap-switch-small.css">
        <link rel="stylesheet" href="http://bdmdesign.github.io/bootstrap-switch/static/stylesheets/flat-ui-fonts.css">

        <!-- Bootstrap Switch (the On-Off buttons). Theme's styles. -->
        <link rel="stylesheet" media="screen" href="${base}/static/css/bootstrap-theme-switch.min.css">

        <!-- Custom styles -->
        <style type="text/css">
            .buttons-title{
                margin-top: 20px
            }
            .buttons-group{
                margin-top: 10px;
            }
            .the-icons{
                margin-left: 0;
                list-style: none;
            }
            .the-icons li {
                float: left;
                width: 25%;
                line-height: 25px;
            }
            .panel-bootstrap-switch,
            .panel-bootstrap-switch .bootstrap-admin-panel-content{
                float: left;
            }
            .panel-bootstrap-switch .buttons-group{
                margin-top: 0;
            }
            .panel-bootstrap-switch .buttons-group .has-switch{
                margin-top: 10px;
            }
            .panel-bootstrap-switch #btn-destroy-switch,
            .panel-bootstrap-switch #btn-create{
                margin-top: 5px;
            }
            .panel-bootstrap-switch #btn-destroy-switch{
                margin-bottom: 10px;
            }
            .panel-bootstrap-switch .bootstrap-switch-footer{
                margin-top: 20px;
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
                        <h1>Buttons & Icons</h1>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">Buttons</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <h4>Extra small Buttons</h4>
                            <p>
                                <button class="btn btn-xs">Button</button>
                                <button class="btn btn-xs btn-default">Button</button>
                                <button class="btn btn-xs btn-primary">Button</button>
                                <button class="btn btn-xs btn-info">Button</button>
                                <button class="btn btn-xs btn-success">Button</button>
                                <button class="btn btn-xs btn-warning">Button</button>
                                <button class="btn btn-xs btn-danger">Button</button>
                                <button class="btn btn-xs btn-link">Button</button>
                            </p>

                            <h4 class="buttons-title">Small Buttons</h4>
                            <p>
                                <button class="btn btn-sm">Button</button>
                                <button class="btn btn-sm btn-default">Button</button>
                                <button class="btn btn-sm btn-primary">Button</button>
                                <button class="btn btn-sm btn-info">Button</button>
                                <button class="btn btn-sm btn-success">Button</button>
                                <button class="btn btn-sm btn-warning">Button</button>
                            </p>
                            <p class="buttons-group">
                                <button class="btn btn-sm btn-danger">Button</button>
                                <button class="btn btn-sm btn-link">Button</button>
                            </p>

                            <h4 class="buttons-title">Normal Buttons</h4>
                            <p>
                                <button class="btn">Button</button>
                                <button class="btn btn-default">Button</button>
                                <button class="btn btn-primary">Button</button>
                                <button class="btn btn-info">Button</button>
                                <button class="btn btn-success">Button</button>
                            </p>
                            <p class="buttons-group">
                                <button class="btn btn-warning">Button</button>
                                <button class="btn btn-danger">Button</button>
                                <button class="btn btn-link">Button</button>
                            </p>

                            <h4 class="buttons-title">Large Buttons</h4>
                            <p>
                                <button class="btn btn-lg">Button</button>
                                <button class="btn btn-lg btn-default">Button</button>
                                <button class="btn btn-lg btn-primary">Button</button>
                                <button class="btn btn-lg btn-info">Button</button>
                            </p>
                            <p class="buttons-group">
                                <button class="btn btn-lg btn-success">Button</button>
                                <button class="btn btn-lg btn-warning">Button</button>
                                <button class="btn btn-lg btn-danger">Button</button>
                                <button class="btn btn-lg btn-link">Button</button>
                            </p>
                            <div class="well" style="margin-top:30px;">
                                <button type="button" class="btn btn-lg btn-block btn-primary">Block level button</button>
                                <button type="button" class="btn btn-lg btn-block btn-default">Block level button</button>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">Button Dropdowns</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <h4>Button Dropdowns</h4>
                            <div class="buttons-group">
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn dropdown-toggle">Action <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-default dropdown-toggle">Action <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle">Action <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-info dropdown-toggle">Info <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="buttons-group">
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-success dropdown-toggle">Success <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Warning <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-danger dropdown-toggle">Danger <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>

                            <h4 class="buttons-title">Split Button Dropdowns</h4>
                            <div class="buttons-group btn-toolbar">
                                <div class="btn-group">
                                    <button class="btn">Action</button>
                                    <button data-toggle="dropdown" class="btn dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-default">Action</button>
                                    <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-primary">Action</button>
                                    <button data-toggle="dropdown" class="btn btn-primary dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-info">Info</button>
                                    <button data-toggle="dropdown" class="btn btn-info dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="buttons-group btn-toolbar">
                                <div class="btn-group">
                                    <button class="btn btn-success">Success</button>
                                    <button data-toggle="dropdown" class="btn btn-success dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-warning">Warning</button>
                                    <button data-toggle="dropdown" class="btn btn-warning dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button class="btn btn-danger">Danger</button>
                                    <button data-toggle="dropdown" class="btn btn-danger dropdown-toggle"><span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Action</a></li>
                                        <li><a href="#">Another action</a></li>
                                        <li><a href="#">Something else here</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a></li>
                                    </ul>
                                </div>
                            </div>

                            <h4 class="buttons-title">Buttons With Icons</h4>
                            <div style="margin-top:10px;">
                                <p>This is an example buttons with icons. About 140 icons are available.</p>
                                <p>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-eye-open"></i> View</button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-refresh glyphicon-white"></i> Update</button>
                                    <button class="btn btn-primary"><i class="glyphicon glyphicon-pencil glyphicon-white"></i> Edit</button>
                                    <button class="btn btn-danger"><i class="glyphicon glyphicon-remove glyphicon-white"></i> Delete</button>
                                </p>
                                <p>And there this is a toolbar icon example</p>
                                <div class="btn-group">
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-step-backward"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-fast-backward"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-backward"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-play"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-pause"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-stop"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-forward"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-fast-forward"></i></button>
                                    <button class="btn btn-default"><i class="glyphicon glyphicon-step-forward"></i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default panel-bootstrap-switch">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">Bootstrap Switch buttons (the On-Off buttons)</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <div class="col-md-2">
                                <h4>Size</h4>
                                <div class="buttons-group">
                                    <input type="checkbox" checked class="switch-large">
                                    <input type="checkbox" checked>
                                    <input type="checkbox" checked class="switch-small">
                                    <input type="checkbox" checked class="switch-mini">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <h4>Colors</h4>
                                <div class="buttons-group">
                                    <input type="checkbox" checked data-on="primary" data-off="primary">
                                    <input type="checkbox" checked data-on="info" data-off="info">
                                    <input type="checkbox" checked data-on="success" data-off="success">
                                    <input type="checkbox" checked data-on="warning" data-off="warning">
                                    <input type="checkbox" checked data-on="danger" data-off="danger">
                                    <input type="checkbox" checked data-on="default" data-off="default">
                                    <input type="checkbox" id="change-color-switch" checked data-on="default" data-off="default">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <h4>Disabled / Readonly</h4>
                                <div class="buttons-group">
                                    <input type="checkbox" checked disabled>
                                    <input type="checkbox" checked readonly>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <h4>Text</h4>
                                <div class="buttons-group">
                                    <input type="checkbox" checked data-text-label="TV">
                                    <input type="checkbox" checked data-on-label="<i class='glyphicon glyphicon-ok glyphicon-white'></i>" data-offlabel="<i class='glyphicon glyphicon-remove'></i>">
                                    <input type="checkbox" checked data-label-icon="glyphicon glyphicon-fullscreen" data-onlabel="<i class='glyphicon glyphicon-ok glyphicon-white'></i>" data-off-label="<i class='glyphicon glyphicon-remove'></i>">
                                    <input type="checkbox" checked data-label-icon="glyphicon glyphicon-youtube glyphicon-large" data-on-label="<i class='glyphicon glyphicon-thumbs-up glyphicon-white'></i>" data-off-label="<i class='glyphicon glyphicon-thumbs-down'></i>">
                                    <input type="checkbox" checked data-label-icon="fui-video" data-on-label="<i class='fui-check glyphicon glyphicon-white'></i>" data-off-label="<i class='fui-cross'></i>">
                                </div>
                            </div>
                            <div class="col-md-2">
                                <h4>Destroy / Create</h4>
                                <div class="buttons-group">
                                    <input type="checkbox" id="destroy-switch" checked="">
                                    <button id="btn-destroy-switch" class="btn btn-default">Destroy me!</button>
                                </div>
                                <div class="buttons-group">
                                    <input id="create-switch" type="checkbox" checked="">
                                    <div id="btn-create" class="btn btn-default">Create</div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <h4>Radio</h4>
                                <div class="buttons-group">
                                    <div class="form-group">
                                        <label for="option1">Option 1</label>
                                        <input id="option1" type="radio" name="radio1" class="radio1" value="option1">
                                        <label for="option2">Option 2</label>
                                        <input id="option2" type="radio" name="radio1" class="radio1" value="option2">
                                        <label for="option3">Option 3</label>
                                        <input id="option3" type="radio" name="radio1" class="radio1" value="option3">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 bootstrap-switch-footer">
                                More examples and details: <a href="http://www.bootstrap-switch.org" target="_blank">http://www.bootstrap-switch.org</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="text-muted bootstrap-admin-box-title">Icons</div>
                        </div>
                        <div class="bootstrap-admin-panel-content">
                            <ul class="the-icons clearfix">
                                <li><i class="glyphicon glyphicon-glass"></i> icon-glass</li>
                                <li><i class="glyphicon glyphicon-music"></i> icon-music</li>
                                <li><i class="glyphicon glyphicon-search"></i> icon-search</li>
                                <li><i class="glyphicon glyphicon-envelope"></i> icon-envelope</li>
                                <li><i class="glyphicon glyphicon-heart"></i> icon-heart</li>
                                <li><i class="glyphicon glyphicon-star"></i> icon-star</li>
                                <li><i class="glyphicon glyphicon-star-empty"></i> icon-star-empty</li>
                                <li><i class="glyphicon glyphicon-user"></i> icon-user</li>
                                <li><i class="glyphicon glyphicon-film"></i> icon-film</li>
                                <li><i class="glyphicon glyphicon-th-large"></i> icon-th-large</li>
                                <li><i class="glyphicon glyphicon-th"></i> icon-th</li>
                                <li><i class="glyphicon glyphicon-th-list"></i> icon-th-list</li>
                                <li><i class="glyphicon glyphicon-ok"></i> icon-ok</li>
                                <li><i class="glyphicon glyphicon-remove"></i> icon-remove</li>
                                <li><i class="glyphicon glyphicon-zoom-in"></i> icon-zoom-in</li>
                                <li><i class="glyphicon glyphicon-zoom-out"></i> icon-zoom-out</li>
                                <li><i class="glyphicon glyphicon-off"></i> icon-off</li>
                                <li><i class="glyphicon glyphicon-signal"></i> icon-signal</li>
                                <li><i class="glyphicon glyphicon-cog"></i> icon-cog</li>
                                <li><i class="glyphicon glyphicon-trash"></i> icon-trash</li>
                                <li><i class="glyphicon glyphicon-home"></i> icon-home</li>
                                <li><i class="glyphicon glyphicon-file"></i> icon-file</li>
                                <li><i class="glyphicon glyphicon-time"></i> icon-time</li>
                                <li><i class="glyphicon glyphicon-road"></i> icon-road</li>
                                <li><i class="glyphicon glyphicon-download-alt"></i> icon-download-alt</li>
                                <li><i class="glyphicon glyphicon-download"></i> icon-download</li>
                                <li><i class="glyphicon glyphicon-upload"></i> icon-upload</li>
                                <li><i class="glyphicon glyphicon-inbox"></i> icon-inbox</li>

                                <li><i class="glyphicon glyphicon-play-circle"></i> icon-play-circle</li>
                                <li><i class="glyphicon glyphicon-repeat"></i> icon-repeat</li>
                                <li><i class="glyphicon glyphicon-refresh"></i> icon-refresh</li>
                                <li><i class="glyphicon glyphicon-list-alt"></i> icon-list-alt</li>
                                <li><i class="glyphicon glyphicon-lock"></i> icon-lock</li>
                                <li><i class="glyphicon glyphicon-flag"></i> icon-flag</li>
                                <li><i class="glyphicon glyphicon-headphones"></i> icon-headphones</li>
                                <li><i class="glyphicon glyphicon-volume-off"></i> icon-volume-off</li>
                                <li><i class="glyphicon glyphicon-volume-down"></i> icon-volume-down</li>
                                <li><i class="glyphicon glyphicon-volume-up"></i> icon-volume-up</li>
                                <li><i class="glyphicon glyphicon-qrcode"></i> icon-qrcode</li>
                                <li><i class="glyphicon glyphicon-barcode"></i> icon-barcode</li>
                                <li><i class="glyphicon glyphicon-tag"></i> icon-tag</li>
                                <li><i class="glyphicon glyphicon-tags"></i> icon-tags</li>
                                <li><i class="glyphicon glyphicon-book"></i> icon-book</li>
                                <li><i class="glyphicon glyphicon-bookmark"></i> icon-bookmark</li>
                                <li><i class="glyphicon glyphicon-print"></i> icon-print</li>
                                <li><i class="glyphicon glyphicon-camera"></i> icon-camera</li>
                                <li><i class="glyphicon glyphicon-font"></i> icon-font</li>
                                <li><i class="glyphicon glyphicon-bold"></i> icon-bold</li>
                                <li><i class="glyphicon glyphicon-italic"></i> icon-italic</li>
                                <li><i class="glyphicon glyphicon-text-height"></i> icon-text-height</li>
                                <li><i class="glyphicon glyphicon-text-width"></i> icon-text-width</li>
                                <li><i class="glyphicon glyphicon-align-left"></i> icon-align-left</li>
                                <li><i class="glyphicon glyphicon-align-center"></i> icon-align-center</li>
                                <li><i class="glyphicon glyphicon-align-right"></i> icon-align-right</li>
                                <li><i class="glyphicon glyphicon-align-justify"></i> icon-align-justify</li>
                                <li><i class="glyphicon glyphicon-list"></i> icon-list</li>

                                <li><i class="glyphicon glyphicon-indent-left"></i> icon-indent-left</li>
                                <li><i class="glyphicon glyphicon-indent-right"></i> icon-indent-right</li>
                                <li><i class="glyphicon glyphicon-facetime-video"></i> icon-facetime-video</li>
                                <li><i class="glyphicon glyphicon-picture"></i> icon-picture</li>
                                <li><i class="glyphicon glyphicon-pencil"></i> icon-pencil</li>
                                <li><i class="glyphicon glyphicon-map-marker"></i> icon-map-marker</li>
                                <li><i class="glyphicon glyphicon-adjust"></i> icon-adjust</li>
                                <li><i class="glyphicon glyphicon-tint"></i> icon-tint</li>
                                <li><i class="glyphicon glyphicon-edit"></i> icon-edit</li>
                                <li><i class="glyphicon glyphicon-share"></i> icon-share</li>
                                <li><i class="glyphicon glyphicon-check"></i> icon-check</li>
                                <li><i class="glyphicon glyphicon-move"></i> icon-move</li>
                                <li><i class="glyphicon glyphicon-step-backward"></i> icon-step-backward</li>
                                <li><i class="glyphicon glyphicon-fast-backward"></i> icon-fast-backward</li>
                                <li><i class="glyphicon glyphicon-backward"></i> icon-backward</li>
                                <li><i class="glyphicon glyphicon-play"></i> icon-play</li>
                                <li><i class="glyphicon glyphicon-pause"></i> icon-pause</li>
                                <li><i class="glyphicon glyphicon-stop"></i> icon-stop</li>
                                <li><i class="glyphicon glyphicon-forward"></i> icon-forward</li>
                                <li><i class="glyphicon glyphicon-fast-forward"></i> icon-fast-forward</li>
                                <li><i class="glyphicon glyphicon-step-forward"></i> icon-step-forward</li>
                                <li><i class="glyphicon glyphicon-eject"></i> icon-eject</li>
                                <li><i class="glyphicon glyphicon-chevron-left"></i> icon-chevron-left</li>
                                <li><i class="glyphicon glyphicon-chevron-right"></i> icon-chevron-right</li>
                                <li><i class="glyphicon glyphicon-plus-sign"></i> icon-plus-sign</li>
                                <li><i class="glyphicon glyphicon-minus-sign"></i> icon-minus-sign</li>
                                <li><i class="glyphicon glyphicon-remove-sign"></i> icon-remove-sign</li>
                                <li><i class="glyphicon glyphicon-ok-sign"></i> icon-ok-sign</li>

                                <li><i class="glyphicon glyphicon-question-sign"></i> icon-question-sign</li>
                                <li><i class="glyphicon glyphicon-info-sign"></i> icon-info-sign</li>
                                <li><i class="glyphicon glyphicon-screenshot"></i> icon-screenshot</li>
                                <li><i class="glyphicon glyphicon-remove-circle"></i> icon-remove-circle</li>
                                <li><i class="glyphicon glyphicon-ok-circle"></i> icon-ok-circle</li>
                                <li><i class="glyphicon glyphicon-ban-circle"></i> icon-ban-circle</li>
                                <li><i class="glyphicon glyphicon-arrow-left"></i> icon-arrow-left</li>
                                <li><i class="glyphicon glyphicon-arrow-right"></i> icon-arrow-right</li>
                                <li><i class="glyphicon glyphicon-arrow-up"></i> icon-arrow-up</li>
                                <li><i class="glyphicon glyphicon-arrow-down"></i> icon-arrow-down</li>
                                <li><i class="glyphicon glyphicon-share-alt"></i> icon-share-alt</li>
                                <li><i class="glyphicon glyphicon-resize-full"></i> icon-resize-full</li>
                                <li><i class="glyphicon glyphicon-resize-small"></i> icon-resize-small</li>
                                <li><i class="glyphicon glyphicon-plus"></i> icon-plus</li>
                                <li><i class="glyphicon glyphicon-minus"></i> icon-minus</li>
                                <li><i class="glyphicon glyphicon-asterisk"></i> icon-asterisk</li>
                                <li><i class="glyphicon glyphicon-exclamation-sign"></i> icon-exclamation-sign</li>
                                <li><i class="glyphicon glyphicon-gift"></i> icon-gift</li>
                                <li><i class="glyphicon glyphicon-leaf"></i> icon-leaf</li>
                                <li><i class="glyphicon glyphicon-fire"></i> icon-fire</li>
                                <li><i class="glyphicon glyphicon-eye-open"></i> icon-eye-open</li>
                                <li><i class="glyphicon glyphicon-eye-close"></i> icon-eye-close</li>
                                <li><i class="glyphicon glyphicon-warning-sign"></i> icon-warning-sign</li>
                                <li><i class="glyphicon glyphicon-plane"></i> icon-plane</li>
                                <li><i class="glyphicon glyphicon-calendar"></i> icon-calendar</li>
                                <li><i class="glyphicon glyphicon-random"></i> icon-random</li>
                                <li><i class="glyphicon glyphicon-comment"></i> icon-comment</li>
                                <li><i class="glyphicon glyphicon-magnet"></i> icon-magnet</li>

                                <li><i class="glyphicon glyphicon-chevron-up"></i> icon-chevron-up</li>
                                <li><i class="glyphicon glyphicon-chevron-down"></i> icon-chevron-down</li>
                                <li><i class="glyphicon glyphicon-retweet"></i> icon-retweet</li>
                                <li><i class="glyphicon glyphicon-shopping-cart"></i> icon-shopping-cart</li>
                                <li><i class="glyphicon glyphicon-folder-close"></i> icon-folder-close</li>
                                <li><i class="glyphicon glyphicon-folder-open"></i> icon-folder-open</li>
                                <li><i class="glyphicon glyphicon-resize-vertical"></i> icon-resize-vertical</li>
                                <li><i class="glyphicon glyphicon-resize-horizontal"></i> icon-resize-horizontal</li>
                                <li><i class="glyphicon glyphicon-hdd"></i> icon-hdd</li>
                                <li><i class="glyphicon glyphicon-bullhorn"></i> icon-bullhorn</li>
                                <li><i class="glyphicon glyphicon-bell"></i> icon-bell</li>
                                <li><i class="glyphicon glyphicon-certificate"></i> icon-certificate</li>
                                <li><i class="glyphicon glyphicon-thumbs-up"></i> icon-thumbs-up</li>
                                <li><i class="glyphicon glyphicon-thumbs-down"></i> icon-thumbs-down</li>
                                <li><i class="glyphicon glyphicon-hand-right"></i> icon-hand-right</li>
                                <li><i class="glyphicon glyphicon-hand-left"></i> icon-hand-left</li>
                                <li><i class="glyphicon glyphicon-hand-up"></i> icon-hand-up</li>
                                <li><i class="glyphicon glyphicon-hand-down"></i> icon-hand-down</li>
                                <li><i class="glyphicon glyphicon-circle-arrow-right"></i> icon-circle-arrow-right</li>
                                <li><i class="glyphicon glyphicon-circle-arrow-left"></i> icon-circle-arrow-left</li>
                                <li><i class="glyphicon glyphicon-circle-arrow-up"></i> icon-circle-arrow-up</li>
                                <li><i class="glyphicon glyphicon-circle-arrow-down"></i> icon-circle-arrow-down</li>
                                <li><i class="glyphicon glyphicon-globe"></i> icon-globe</li>
                                <li><i class="glyphicon glyphicon-wrench"></i> icon-wrench</li>
                                <li><i class="glyphicon glyphicon-tasks"></i> icon-tasks</li>
                                <li><i class="glyphicon glyphicon-filter"></i> icon-filter</li>
                                <li><i class="glyphicon glyphicon-briefcase"></i> icon-briefcase</li>
                                <li><i class="glyphicon glyphicon-fullscreen"></i> icon-fullscreen</li>
                            </ul>
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
<script type="text/javascript" src="${base}/static/vendors/bootstrap-switch/build/js/bootstrap-switch.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$("#antb").addClass("active");
	});

	$(function() {
		/*
		 * Initialize all the inputs
		 */
		$('input[type="checkbox"],[type="radio"]').not('#create-switch')
				.bootstrapSwitch();

		/*
		 * Destroy
		 */
		$('#btn-destroy-switch').on('click', function() {
			$('#destroy-switch').bootstrapSwitch('destroy');
			$(this).remove();
		});

		/*
		 * Create
		 */
		$('#btn-create').on('click', function() {
			$('#create-switch').bootstrapSwitch();
			$(this).remove();
		});

		/*
		 * Radio
		 */
		$('.radio1').on('switch-change', function() {
			$('.radio1').bootstrapSwitch('toggleRadioState');
		});
	});
</script>