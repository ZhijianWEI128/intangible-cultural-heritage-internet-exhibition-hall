<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNoMatter.aspx.cs" Inherits="Admin_AddNoMatter" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title></title>
    <link href="Styles/layui/css/layui.css" rel="stylesheet" />
    <link href="Styles/admin.css" rel="stylesheet" />
    <style type="text/css">
        #DropDownList1 {
            display: block;
            height: 32px;
            width: 150px;
        }
    </style>
</head>
<body class="gray-bg">
    <div class="page-content-wrap">
        <form class="layui-form" runat="server">
            <div class="layui-tab" style="margin: 0;">
                <div class="layui-tab-content">
                    <div class="layui-tab-item">新增非遗介绍信息</div>
                    <div class="layui-tab-item layui-show">
                        <div class="layui-form-item">
                            <label class="layui-form-label">标题：</label>
                            <div class="layui-input-block">
                                <input type="text" name="Title" runat="server" id="Title" placeholder="请输入标题" autocomplete="off" class="layui-input"/>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">内容：</label>
                            <div class="layui-input-block">
                                <input type="text" name="Content" runat="server" id="Content" placeholder="请输入内容" autocomplete="off" class="layui-input"/>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">视频：</label>
                            <div class="layui-input-block">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="layui-form-item" style="padding-left: 10px;">
                <div class="layui-input-block">
                    <button class="layui-btn layui-btn-normal" lay-submit lay-filter="formDemo" runat="server" onserverclick="Button2_Click">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
