<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MovieUpload.aspx.cs" Inherits="MovieUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <script type="text/javascript" src="../Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 160%;
        }
        .auto-style2 {
            height: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            视频上传</div>
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" style="height: 21px" Text="上传" />
        </p>
        <p>
             <table class="table table-hover">
            <thead><tr><th>ID</th><th>视频名称</th><th>操作</th></tr></thead>
            <tbody>
                <%
                    if (drs != null)
                    {
                        foreach (System.Data.DataRow dr in drs)
                        {
                %>
                        <tr>
                            <td><%=dr["Id"] %></td>
                            <td><%=dr["MovieName"] %></td>
                            <td>
                                <input type="submit" value="删除" class="btn btn-default" onclick="setOpear(<%=dr["Id"]%>)"/>
                            </td>
                        </tr>
                <% 
                        }
                    }  
                %>
            </tbody>
        </table>
        </p>
            <script type="text/javascript">
        function setOpear(id) {
            $("#deletemovie").val(id);
        }
    </script>
    <input type="hidden" id="deletemovie" name="deletemovie" value=""/>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
