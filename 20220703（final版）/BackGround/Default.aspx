<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BackGround_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>非遗互联网展馆「后台管理」</title>
    <script type="text/javascript" src="../Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    
    <link href="../Css/BackGround-Default.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-right custom-header">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/newImg/admin_index.png" OnClick="ImageButton1_Click"/>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/newImg/admin_exit.png" OnClick="ImageButton2_Click"/>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-3 col-sm-3 col-md-3 custom-menu">
                    <div class="custom-menu-title"></div>
                    <div class="custom-menu-content">
                         <asp:TreeView ID="TreeView1" runat="server" ImageSet="Simple" Width="120">
                            <ParentNodeStyle Font-Bold="False" />
                            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" HorizontalPadding="0px" VerticalPadding="0px" />
                            <Nodes>
                                <asp:TreeNode Text="留言信息" Value="留言信息">
                                    <asp:TreeNode Text="留言信息审核" Value="留言信息审核" NavigateUrl="~/BackGround/CheckInfo1.aspx?id=用户建议"
                                        Target="mainFrame"></asp:TreeNode>
                                    <asp:TreeNode Text="留言信息删除" Value="留言信息删除" NavigateUrl="~/BackGround/DeleteInfo.aspx?id=用户建议"
                                        Target="mainFrame"></asp:TreeNode>
                                </asp:TreeNode>
                                <asp:TreeNode Text="视频信息" Value="视频信息">
                                    <asp:TreeNode Text="视频上传删除" Value="视频上传删除" NavigateUrl="~/BackGround/MovieUpload.aspx"
                                        Target="mainFrame"></asp:TreeNode>
                                </asp:TreeNode>
                              
                                  <asp:TreeNode Text="用户账号" Value="用户账号">
                                    <asp:TreeNode Text="用户账号审核" Value="用户账号审核" NavigateUrl="~/BackGround/CheckInfo.aspx?id=培训信息"
                                        Target="mainFrame"></asp:TreeNode>
                                </asp:TreeNode>
                               
                                  <asp:TreeNode Text="非遗文化" Value="非遗文化">
                                       <asp:TreeNode Text="非遗文化添加" Value="非遗文化添加" NavigateUrl="~/Default3.aspx?id=非遗信息"
                                        Target="mainFrame"></asp:TreeNode>
                                    <asp:TreeNode Text="非遗文化审核" Value="非遗文化审核" NavigateUrl="~/BackGround/CheckFYInfo.aspx?id=非遗信息"
                                        Target="mainFrame"></asp:TreeNode>
                                    <asp:TreeNode Text="非遗文化删除" Value="非遗文化删除" NavigateUrl="~/BackGround/DeleteFYInfo.aspx?id=非遗信息"
                                        Target="mainFrame"></asp:TreeNode>
                                </asp:TreeNode>
                                
                               
                            </Nodes>
                            <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" HorizontalPadding="0px"
                                NodeSpacing="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                    </div>
                </div>
                <div class="col-xs-9 col-sm-9 col-md-9 custom-list">
                    <div class="custom-list-title">现在的位置：非遗互联网展览馆 &gt; <span class="hong">后台管理系统</span> <span id="curNode" runat="server"></span></div>                    
                    <iframe id="iframe1" name="mainFrame" style="width:100%; height:780px" frameborder="0"></iframe>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
