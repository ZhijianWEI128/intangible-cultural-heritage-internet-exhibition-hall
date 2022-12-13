<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Admin_Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="images/favicon.png" type="image/png">
    <title>Home Page</title>
    <link href="/Content/css/style.default.css" rel="stylesheet">
</head>
<body>
    <div id="preloader">
        <div id="status"><i class="fa fa-spinner fa-spin"></i></div>
    </div>
    <section>
        <div class="leftpanel">
            <div class="logopanel">
                <h1><span>[</span> Home <span>]</span></h1>
            </div><!-- logopanel -->
            <div class="leftpanelinner">
                <h5 class="sidebartitle">基本功能</h5>
                <ul class="nav nav-pills nav-stacked nav-bracket">
                    <li class="nav-parent">
                        <a href=""><i class="fa fa-edit"></i> <span>管理员信息管理</span></a>
                        <ul class="children">
                            <li><a data="addadmin.aspx" class="auto">添加管理员信息</a></li>
                            <li><a data="AdminInfoManage.aspx" class="auto">管理员信息管理</a></li>
                        </ul>
                    </li>
                    <li class="nav-parent">
                        <a href=""><i class="fa fa-suitcase"></i> <span>用户账号管理</span></a>
                        <ul class="children">
                            <li><a data="AdminUserManage.aspx" class="auto">用户账号管理</a></li>
                        </ul>
                    </li>
                    <li class="nav-parent">
                        <a href=""><i class="fa fa-suitcase"></i> <span>物品类型管理</span></a>
                        <ul class="children">
                            <li><a data="AdminAddGoodType.aspx" class="auto">新增物品类型</a></li>
                            <li><a data="AdminGoodTypeManage.aspx" class="auto">物品类型管理</a></li>
                        </ul>
                    </li>
                    <li class="nav-parent">
                        <a href=""><i class="fa fa-suitcase"></i> <span>物品信息管理</span></a>
                        <ul class="children">
                            <li><a data="AdminAddGood.aspx" class="auto">新增物品信息</a></li>
                            <li><a data="AdminGoodManage.aspx" class="auto">物品信息管理</a></li>
                        </ul>
                    </li>
                    <li class="nav-parent">
                        <a href=""><i class="fa fa-suitcase"></i> <span>用户留言管理</span></a>
                        <ul class="children">
                            <li><a data="MessageManage.aspx" class="auto">留言管理</a></li>
                        </ul>
                    </li>
                    <li class="nav-parent">
                        <a href=""><i class="fa fa-suitcase"></i> <span>新闻信息管理</span></a>
                        <ul class="children">
                            <li><a data="AddNotice.aspx" class="auto">新增新闻信息</a></li>
                            <li><a data="NoticeManage.aspx" class="auto">新闻信息管理</a></li>
                        </ul>
                    </li>
                    <li class="nav-parent">
                        <a href=""><i class="fa fa-suitcase"></i> <span>非遗介绍信息管理</span></a>
                        <ul class="children">
                            <li><a data="AddNoMatter.aspx" class="auto">新增非遗介绍信息</a></li>
                            <li><a data="NoMatterManage.aspx" class="auto">非遗介绍信息管理</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- leftpanelinner -->
        </div><!-- leftpanel -->
        <div class="mainpanel">
            <div class="headerbar">
                <a class="menutoggle"><i class="fa fa-bars"></i></a>
                <%--<form class="searchform" action="index.html" method="post">
                    <input type="text" class="form-control" name="keyword" placeholder="Search here..." />
                </form>--%>
                <div class="header-right">
                    <ul class="headermenu">
                        <li>
                            <div class="btn-group">
                                <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                                    <li><a data="AdminInfo.aspx" class="auto"><i class="glyphicon glyphicon-user"></i> 个人信息</a></li>
                                    <li><a href="/Login.aspx"><i class="glyphicon glyphicon-log-out"></i> 退出</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div><!-- headerbar -->
            <div class="contentpanel">
                <div class="row">
                    <iframe src="admin_main.aspx" id="mainIfram" style="border:none;" width="100%" name="right" scrolling="no" height="1200px"></iframe>
                </div><!-- row -->
            </div><!-- contentpanel -->
        </div><!-- mainpanel -->
        <div class="rightpanel">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs nav-justified">
                <li class="active"><a href="#rp-alluser" data-toggle="tab"><i class="fa fa-users"></i></a></li>
                <li><a href="#rp-favorites" data-toggle="tab"><i class="fa fa-heart"></i></a></li>
                <li><a href="#rp-history" data-toggle="tab"><i class="fa fa-clock-o"></i></a></li>
                <li><a href="#rp-settings" data-toggle="tab"><i class="fa fa-gear"></i></a></li>
            </ul>
        </div><!-- rightpanel -->
    </section>
    <script src="/Content/js/jquery-1.11.1.min.js"></script>
    <script src="/Content/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/Content/js/jquery-ui-1.10.3.min.js"></script>
    <script src="/Content/js/bootstrap.min.js"></script>
    <script src="/Content/js/modernizr.min.js"></script>
    <script src="/Content/js/jquery.sparkline.min.js"></script>
    <script src="/Content/js/toggles.min.js"></script>
    <script src="/Content/js/retina.min.js"></script>
    <script src="/Content/js/jquery.cookies.js"></script>
    <script src="/Content/js/flot/jquery.flot.min.js"></script>
    <script src="/Content/js/flot/jquery.flot.resize.min.js"></script>
    <script src="/Content/js/flot/jquery.flot.spline.min.js"></script>
    <script src="/Content/js/morris.min.js"></script>
    <script src="/Content/js/raphael-2.1.0.min.js"></script>
    <script src="/Content/js/custom.js"></script>
    <script src="/Content/js/dashboard.js"></script>
    <div style="text-align: center;">
        <p>footer</p>
    </div>
</body>
</html>

<script>
    $(".auto").on("click", function () {
        $("#mainIfram").attr("src", $(this).attr("data"));
    });
</script>
