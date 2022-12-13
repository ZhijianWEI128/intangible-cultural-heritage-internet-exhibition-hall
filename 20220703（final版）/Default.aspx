<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" Title="非遗互联网展览馆" %>
<asp:Content runat="server" ID="head1" ContentPlaceHolderID="head">
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    	
	
	
		<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
		<link rel="stylesheet" type="text/css" href="style/public.css" />
		<link rel="stylesheet" type="text/css" href="style/css.css" />
		<link rel="stylesheet" type="text/css" href="font/iconfont.css" />
		<script type="text/javascript" src="js/js.js"></script>
    <style type="text/css">
        .red
        {
            color: Red;
        }
        a
        {
            text-decoration: none;
        }
        #coffeeContent p {
            font-size: 25px;
            letter-spacing: 5px;
            text-indent: 2em;
        }
    </style>
	
</asp:Content>

<%@ Register Src="UserControl/RecommendInfo.ascx" TagName="RecommendInfo" TagPrefix="uc1" %>
<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1">
        
        <div class="caidan">
			<div class="centerbox">
				<span class="caidan-span">中国非遗物质文化传统</span>
			</div>
		</div>
		<div class="box">
			<ul class="ul1" id="ul1">
				<li><img src="img/lunbo1.png"></li>
				<li><img src="img/lunbo2.png"></li>
				<li><img src="img/lunbo3.png"></li>
			</ul>
			<div class="left-botton indexs" id="left-botton">&lt;</div>
			<div class="right-botton indexs" id="right-botton">&gt;</div>
			<ul class="ul2 indexs" id="ul2">
				<li>1</li>
				<li>2</li>
				<li>3</li>
			</ul>
		</div>
		<div class="nav1">
			<ul class="centerbox">
				<li>
					<a href="#">
						<p>非遗传承</p>
						<p>文化交流</p>
					</a>
				</li>
				<li>
					<a href="#">
						<p>各地非遗文化</p>
						<p>中国戏曲</p>
					</a>
				</li>
				<li>
					<a href="#">
						<p>广州木雕</p>
						<p>潮州木雕</p>
					</a>
				</li>
				<li>
					<a href="#">
						<p>深圳</p>
						<p>北京</p>
					</a>
				</li>
				<li>
					<a href="#">
						<p>公共场所</p>
						<p>应积极佩戴口罩</p>
					</a>
				</li>
				<li>
					<a href="#">
						<p>互联网</p>
						<p>宣称疫情及时辟谣</p>
					</a>
				</li>
				<li>
					<a href="#">
						<p>网购</p>
						<p>推荐网购</p>
					</a>
				</li>
			</ul>
		</div>
		 <!-- Preloader -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- /Preloader -->

    <!-- Top Search Form Area -->
    <div class="top-search-area">
        <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <!-- Close -->
                        <button type="button" class="btn close-btn" data-dismiss="modal"><i class="ti-close"></i></button>
                        <!-- Form -->
                        <form action="index.html" method="post">
                            <input type="search" name="top-search-bar" class="form-control" placeholder="Search and hit enter...">
                            <button type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

   
  

        <div class="wrapbottom">
        <div class="column">
            <div class="column-title">
                <span id="C0">非物质文化介绍</span>
            </div>
        </div>
        <div class="column-flower goods2" id="coffeeContent">
            <%--<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
            <p>2003年10月17日，联合国教科文组织第32届大会通过了《保护非物质文化遗产公约》（以下简称《公约》）。中国于2004年加入《公约》。《公约》第四章“在国际一级保护非物质文化遗产”明确由缔约国成员选举的“政府间保护非物质文化遗产委员会”（以下简称“委员会”）提名、编辑更新人类非物质文化遗产代表作名录，急需保护的非物质文化遗产名录，保护非物质文化遗产的计划、项目和活动（优秀实践名册）。《公约》在第八章“过渡条款”中明确：委员会应把在公约生效前宣布为“人类口头和非物质遗产代表作”的遗产纳入人类非物质文化遗产代表作名录。

作为履行《公约》缔约国义务的重要内容之一，中国积极推进向联合国教科文组织申报非物质文化遗产名录（名册）项目的相关工作，以促进国际一级保护工作，提高相关非物质文化遗产的可见度。截至2020年12月，中国列入联合国教科文组织非物质文化遗产名录（名册）项目共计42项，总数位居世界第一。其中，人类非物质文化遗产代表作34项（含昆曲、古琴艺术、新疆维吾尔木卡姆艺术和蒙古族长调民歌）；急需保护的非物质文化遗产名录7项；优秀实践名册1项。42个项目的入选，体现了中国日益提高的履约能力和非物质文化遗产保护水平，对于增强遗产实践社区、群体和个人的认同感和自豪感，激发传承保护的自觉性和积极性，在国际层面宣传和弘扬博大精深的中华文化、中国精神和中国智慧，都具有重要意义。</p>

            
        </div>
    </div>
          
</asp:Content>
