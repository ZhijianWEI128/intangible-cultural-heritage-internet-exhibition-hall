<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NoMatterManage.aspx.cs" Inherits="Admin_NoMatterManage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet" />
    <link href="css/font-awesome.min.css?v=4.4.0" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery.min.js?v=2.1.4"></script>
    <script type="text/javascript" src="js/bootstrap.min.js?v=3.3.6"></script>
    <link href="Styles/layui/css/layui.css" rel="stylesheet" />
    <link href="Styles/admin.css" rel="stylesheet" />
    
</head>
<body class="gray-bg">
    <form id="form1" runat="server">
    <div class="row  border-bottom white-bg dashboard-header">
        <div class="col-sm-12">
            <div style="width: 1000px; height: auto; margin: 20px auto;" align="left">              
                <table class="tbl layui-table" lay-even lay-skin="nob">
                    <colgroup>
                        <col width="70"/>
                        <col width="150"/>
                        <col width="150"/>
                        <col width="150"/>
                        <col width="150"/>
                        <col width="200"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th>
                                序号
                            </th>
                            <th>
                                标题
                            </th>
                            <th>
                                内容
                            </th>
                            <th>
                                视频
                            </th>
                            <th>
                                添加时间
                            </th>
                            <th>
                                操作
                            </th>
                        </tr>
                    </thead>
                    <tbody class="tblbody">
                    </tbody>
                </table>
            </div>           
            <div class="page-wrap">
                <ul class="pagination">
                    <li class="up_page"><span>«</span></li>
                    <li class="disabled"><span class="pageth">1</span></li>
                    <li class="down_page">
                        <span>»</span>
                    </li>
                </ul>
            </div>
            <input type="hidden" id="pi" value="1" runat="server" />
            <input type="hidden" id="ps" value="10" runat="server" />        
        </div>
    </div>
    </form>
</body>
</html>
<script type="text/javascript" src="Scripts/Common.js"></script>
<script type="text/javascript">
    var page = "NoMatterManage.aspx";
    var method = "loadNoMatterManage";
    var method2 = "RemoveNoMatterManage";
    
    getInitData(page, method);
    delRowData(page, method2);
    PageSplit(page, method);
</script>
