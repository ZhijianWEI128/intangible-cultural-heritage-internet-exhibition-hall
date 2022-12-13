<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HYXQYM.aspx.cs" Inherits="HYXQYM" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 619px;
            height: 259px;
        }
        .auto-style2 {
            margin-left: 6px;
            margin-top: 0px;
        }
        .auto-style3 {
            margin-left: 3px;
        }
        .auto-style4 {
            width: 167px;
        }
        .auto-style5 {
            height: 24px;
            width: 167px;
        }
        .auto-style6 {
            height: 43px;
            width: 167px;
        }
        .auto-style7 {
            margin-left: 3px;
            margin-top: 0px;
        }
        .auto-style8 {
            width: 167px;
            height: 39px;
        }
        .auto-style9 {
            width: 336px;
            height: 39px;
        }
        .auto-style10 {
            width: 89px;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellpadding="0" cellspacing="0" class="auto-style1">
            <tr>
                <td align="right" class="auto-style4">
                    会员id：</td>
                <td align="left" style="width: 336px">
                    &nbsp;<asp:TextBox ID="txtType" runat="server" Width="307px" CssClass="auto-style2" Height="22px"></asp:TextBox></td>
                <td style="width: 89px">
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">
                    用户名：</td>
                <td align="left" style="width: 336px">
                    <asp:TextBox ID="txtTitle" runat="server" Width="312px" CssClass="auto-style3"></asp:TextBox></td>
                <td style="width: 89px">
                    </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">
                    用户密码：</td>
                <td align="left" style="width: 336px">
                    <asp:TextBox ID="txtTitle0" runat="server" Width="312px" CssClass="auto-style7"></asp:TextBox></td>
                <td style="width: 89px">
                    </td>
            </tr>
            <tr>
                <td align="right" class="auto-style8">
                    审核情况：</td>
                <td align="left" class="auto-style9">
                    <asp:TextBox ID="txtLinkMan" runat="server" Width="314px"></asp:TextBox></td>
                <td class="auto-style10">
                    </td>
            </tr>
            <tr>
                <td align="right" class="auto-style5">
                    &nbsp;</td>
                <td align="left" style="width: 336px; height: 24px">
                    &nbsp;</td>
                <td style="width: 89px; height: 24px">
                    </td>
            </tr>
            <tr>
                <td class="auto-style6">
                </td>
                <td style="width: 336px; height: 43px">
                </td>
                <td style="width: 89px; height: 43px">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
