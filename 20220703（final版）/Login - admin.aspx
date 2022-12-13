<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login - admin.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >

<head runat="server">
    <title>"建宇中国"－用户登录</title>
    <script type="text/javascript" src="Scripts/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="Css/login.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
        .auto-style1 {
            width: 235px;
        }
        .auto-style2 {
            z-index: inherit;
            position: absolute;
            top: 294px;
            left: 585px;
            height: 296px;
        }
    </style>
</head>

<body class="login" style="background:url('img/adminlogin.png') no-repeat;background-size:100%" id=" ">
<div class="auto-style2">	
	<div class="content clearfix" style="text-align:center">		
        <div style="padding:20px; background-color:rgba(255,255,255,0.9);border-radius:10px">
		<form  runat="server">
			<h1>中国非遗文化用户系统</h1>					
			<div class="login-fields">							
				<div class="field">
					<label for="username" class="auto-style1">请输入用户账号:</label>
                    <asp:TextBox ID="account" class="form-control" runat="server"  Placeholder="user" Width="242px" CssClass="center-block"></asp:TextBox>
				    <br/>			
				</div>		
              </div>
				<div class="field">	
					<label for="password">请输入用户密码:</label>
				 <asp:TextBox ID="Password" class="form-control" runat="server" TextMode="Password" Placeholder="password" Width="243px" CssClass="center-block"></asp:TextBox>
                </div>

				<div class="field">
                     <div class="form-group">
                      <label for="checkcode">请输入验证码：</label>
                         <asp:Image ID="Image1" runat="server" ImageUrl="~/CheckCode.aspx " />
                        
                           <asp:TextBox ID="txtCheckCode" class="form-control" Width="239px" runat="server" CssClass="center-block" ></asp:TextBox>
                            </div>
                 </div>
			  <div class="form-group text-center custom-login-btn">
                        <asp:imageButton ID="ImageButton1" runat="server" CssClass="btn btn-success" OnClick="ImageButton1_Click" AlternateText="登录"/>
                        &nbsp;&nbsp;
                        <asp:imageButton ID="ImageButton2" runat="server" CssClass="btn btn-success" OnClick="ImageButton2_Click" AlternateText="注册"/>&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" class="btn-link" NavigateUrl="~/Default.aspx">[返回首页]</asp:HyperLink>
                    </div>
		</form>

        </div>
	</div> 
    </div> 
</body>
</html>
