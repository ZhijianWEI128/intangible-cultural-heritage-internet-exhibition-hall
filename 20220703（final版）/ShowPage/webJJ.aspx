<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="webJJ.aspx.cs" Inherits="webJJ" Title="非遗文化视频" %>
<%@ Register Src="../UserControl/RecommendInfo.ascx" TagName="RecommendInfo" TagPrefix="uc2" %>
<asp:Content runat="server" ID="head1" ContentPlaceHolderID="head">
    <link href="../css/defaultList.css" rel="stylesheet" type="text/css" />
      <script type="text/javascript" src="../Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="wrapbottom">
        <div class="column">
            <div class="column-title">
                <a href="#" id="C1">视频浏览</a>
            </div>
        </div>
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
                                <input type="submit" value="播放" class="btn btn-default" onclick="btn_view(<%=dr["id"]%>)"/>
                               <%-- <asp:LinkButton ID="view" runat="server"  OnClick="btn_view">播放</asp:LinkButton>--%>
                            </td>
                        </tr>
                <% 
                        }
                    }  
                %>
            </tbody>
        </table>
    </div>
     <script type="text/javascript">
        function btn_view(id) {
            $("#opearID").val(id);
          
        };
    </script>
    <input type="hidden" id="opearID" name="opearID" value=""/>
</asp:Content>

