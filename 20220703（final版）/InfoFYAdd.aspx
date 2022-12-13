<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="InfoFYAdd.aspx.cs" Inherits="InfoFYAdd" Title="非遗信息添加" %>
<%@ Register Src="UserControl/RecommendInfo.ascx" TagName="RecommendInfo" TagPrefix="uc2" %>
<asp:Content runat="server" ID="head1" ContentPlaceHolderID="head">
    <link href="../css/infoAdd.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            left: 0px;
            top: 0px;
        }
        .auto-style5 {
            text-align: right;
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row custom-add-row">
        <div class="col-md-2 text-center custom-add-title"><label class="control-label" for = "name">
            <div class="auto-style5">
                信息类别</div>
            </label>&nbsp;</div>
        <div class="col-md-6">
            <div class = "input-group">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="335px" CssClass="auto-style3">
                    <asp:ListItem>非遗信息</asp:ListItem>
                    
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-md-3"></div>
    </div>
    <div class="row custom-add-row">
        <div class="col-md-2 text-center custom-add-title"><label class="control-label" for = "tel">
            <div class="auto-style5">
                非遗标题</div>
            </label> &nbsp;</div>
        <div class="col-md-6"> 
            <div class = "input-group">                 
                <asp:TextBox ID="txtTitle" CssClass="form-control" runat="server" Width="337px"></asp:TextBox>                
            &nbsp;&nbsp; </div>             
        </div> 
        <div class="col-md-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="* 必填项"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row custom-add-row">
        <div class="col-md-2 text-center custom-add-title"><label class="control-label" for = "idCard"><span class="auto-style6">留言内容</span></label> </div>
        <div class="col-md-6"> 
            <div class = "input-group"> 
                <asp:TextBox ID="txtInfo" CssClass="auto-style3" runat="server" Height="194px" TextMode="MultiLine" Width="337px"></asp:TextBox>                
            </div>             
        </div> 
        <div class="col-md-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtInfo" ErrorMessage="* 必填项"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row custom-add-row">
        <div class="col-md-2 text-center custom-add-title"><label class="control-label" for = "profession"><span class="auto-style6">姓名</span></label> </div>
        <div class="col-md-6"> 
            <div class = "input-group">                 
                <asp:TextBox ID="txtLinkMan" CssClass="auto-style3" runat="server" Height="49px" Width="341px"></asp:TextBox>                
            </div>             
        </div>
        <div class="col-md-3"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLinkMan" ErrorMessage="* 必填项"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row custom-add-row">
        <div class="col-md-2 text-center custom-add-title"><label class="control-label" for = "profession"><span class="auto-style6">联系电话</span></label> </div>
        <div class="col-md-6"> 
            <div class = "input-group">                 
                <asp:TextBox ID="txtTel" CssClass="auto-style3" runat="server" Height="38px" Width="341px"></asp:TextBox>                
            </div>           
        </div>
        <div class="col-md-3">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTel" ErrorMessage="格式：(3/4位)-（7/8位）" ValidationExpression="(\(\d{3,4}\)|\d{3,4}-)?\d{7,8}"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTel" ErrorMessage="* 必填项"></asp:RequiredFieldValidator></div>
    </div>
    <div class="row form-group custom-add-row"> 
        <div class="col-sm-2 col-sm-offset-2"> 
            <asp:ImageButton ID="imgBtnAdd" runat="server" AlternateText="发布留言" Height="46px"
                    OnClick="imgBtnAdd_Click" Width="145px" ImageUrl="images/kaishifa.jpg" />
        </div>    
    </div> 
</asp:Content>
