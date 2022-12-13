<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="webFY.aspx.cs" Inherits="webFY" Title="非遗信息" %>
<%@ Register Src="../UserControl/RecommendInfo.ascx" TagName="RecommendInfo" TagPrefix="uc2" %>
<asp:Content runat="server" ID="head1" ContentPlaceHolderID="head">
    <link href="../css/defaultList.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-family: "宋体";
            font-size: large;
            line-height: 24px;
            font-weight: normal;
            color: #333333;
        }
        .auto-style2 {
            font-family: "宋体";
            font-size: large;
            line-height: 22px;
            font-weight: bold;
            color: #006FC3;
        }
        .auto-style3 {
            font-size: xx-large;
        }
        .auto-style4 {
            font-size: xx-large;
            width: 82px;
            height: 87px;
        }
        .auto-style5 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <div class="row">
         <div class="col-sm-12 col-md-12">
            <div class="auto-style5"><img src="../images/newImg/fk.png" class="auto-style4"/><span class="auto-style3"> 非遗信息</span></div>         
            <div class="row">
                <div class="col-sm-12 col-md-12">
                    <asp:DataList ID="dlFree" runat="server" Height="202px" Width="677px">
                        <ItemTemplate>
                            <table align="center" cellpadding="0" cellspacing="0" height:"22" width="543">
                                <tr>
                                    <td class="huise">
                                        <p>
                                            &nbsp;</p>
                                        <p>
&nbsp;</p>
                                        <p>
&nbsp;</p>
                                        <p>
&nbsp;</p>
                                        <p>
&nbsp;</p>
                                        <p>
&nbsp;</p>
                                        <p>
                                            <span class="auto-style2">『<%# DataBinder.Eval(Container.DataItem,"type") %>』</span> <span class="auto-style1"><%# DataBinder.Eval(Container.DataItem,"title") %>[<%# DataBinder.Eval(Container.DataItem,"date") %>]</span>
                                        </p>
                                        <p class="custom-content-p">
                                            <span class="banhui"><%# DataBinder.Eval(Container.DataItem,"info") %></span>
                                        </p>
                                    </td>
                                </tr>
                                <tr style="color: #000000">
                                    <td align="center">
                                        &nbsp;</td>
                                </tr>
                                <tr style="color: #000000">
                                    <td height="10">
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    当前页码为［<asp:Label ID="lblCurrentPage" runat="server" Text="1"></asp:Label>］页
                    总页码［<asp:Label ID="lblSumPage" runat="server" Text="0"></asp:Label>］页
                    <asp:LinkButton ID="lnkBtnFirst" runat="server" Font-Underline="False" OnClick="lnkBtnFirst_Click"> 第一页 </asp:LinkButton>
                    <asp:LinkButton ID="lnkBtnPrevious" runat="server" Font-Underline="False" OnClick="lnkBtnPrevious_Click"> 上一页 </asp:LinkButton>
                    <asp:LinkButton ID="lnkBtnNext" runat="server" Font-Underline="False" OnClick="lnkBtnNext_Click"> 下一页 </asp:LinkButton>
                    <asp:LinkButton ID="lnkBtnLast" runat="server" Font-Underline="False" OnClick="lnkBtnLast_Click"> 末一页 </asp:LinkButton>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
