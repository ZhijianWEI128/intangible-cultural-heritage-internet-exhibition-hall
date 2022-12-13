<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="webWPQG.aspx.cs" Inherits="ShowPage_webWPQG" Title="文化新闻" %>
<%@ Register Src="../UserControl/RecommendInfo.ascx" TagName="RecommendInfo" TagPrefix="uc2" %>
<asp:Content runat="server" ID="head1" ContentPlaceHolderID="head">
    <link href="../css/defaultList.css" rel="stylesheet" type="text/css" />
   	<link href="css/index.css" rel="stylesheet" type="text/css" />
    	
    <style type="text/css">
        .auto-style3 {
            margin-left: 33px;
        }
    </style>
    	
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
  

	  <div class="wrapbottom">
        <div class="column">
            <div class="column-title">
                <a href="https://www.sohu.com/a/564530378_119717" id="C1">资讯新闻（点击进入）</a>

            </div>
        </div>
        <div class="column-flower goods2" >
            <img src="../img/1.jpg" class="auto-style7" /><img src="../img/2.jpg" class="auto-style7" />
            <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                <ItemTemplate>
                    <div class="column-flower-item" style="float:left;width:60%;">
                        <div class="goods">
                            <div class="goods-name" style="text-align: left; padding: 5px;">
                                标题：<asp:Literal ID="Literal2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Title")%>'></asp:Literal>
                            </div>
                            <div class="goods-name" style="text-align: left; padding: 5px;">
                                内容：<asp:Literal ID="Literal3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"Content")%>'></asp:Literal>
                            </div>
                        </div>
                    </div>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("id") %>' Visible="False" />
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
      <div class="column">
            <div class="column-title" style="margin-left: 368px">
                <span id="C0">非遗纸雕灯：让传统文化“活”起来 </span>
            </div>
        </div>
        <div class="column-flower goods2" id="coffeeContent" style="margin-left: 323px">
            <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
            <p class="auto-style3">

华声在线7月6日讯（文/视频 全媒体记者 王智芳 实习生 罗斯妮 黄静静 通讯员 王钟莞）7月3日-6日，湖南省第一届职业技能大赛在株洲举办。大赛期间同步开展了“技能中国行2022——走进湖南”系列活动，包括技能成果展示交流、绝技绝活展演、优秀技能人才宣讲报告会等。

5日，在衡阳馆非遗纸雕灯项目展区，3个经过精雕细琢的最新原创非遗纸雕灯作品吸引了许多过往观众。</p>

            
        </div>


    
</asp:Content>
