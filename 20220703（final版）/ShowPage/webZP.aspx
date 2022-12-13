<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="webZP.aspx.cs" Inherits="webZP" Title="供求信息---招聘信息" %>
<%@ Register Src="../UserControl/RecommendInfo.ascx" TagName="RecommendInfo" TagPrefix="uc2" %>
<asp:Content runat="server" ID="head1" ContentPlaceHolderID="head">
    <link href="../css/defaultList.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style3 {
            height: 223px;
        }
        .auto-style4 {
            height: 195px;
        }
        .auto-style5 {
            height: 201px;
        }
        .auto-style6 {
            height: 218px;
        }
        .auto-style7 {
            height: 205px;
        }
        .auto-style8 {
            height: 216px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      <div class="row">
                <div class="col-12 text-center wow fadeInUp" data-wow-delay="700ms">
                    <a href="https://www.ihchina.cn/index.html/" class="btn alime-btn btn-2 mt-15">中国非物质文化遗产网·中国非物质文化遗产数字博物馆馆</a>
                </div>
            </div>
    <section class="follow-area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <h2>中国非遗传统文化</h2>
                    </div>
                </div>
            </div>
        </div>

        <!-- Instagram Feed Area -->
        <div class="instragram-feed-area owl-carousel">
            <!-- Single Instagram Item -->
            <div class="single-instagram-item">
              <img src="../img/276f8714d910478c901ed518cb894fe9.jpg" class="auto-style3" />
                <a href="http://grassland.china.com.cn/2022-06/13/content_42001468.html " rel="noreferrer" style="color: rgb(255, 0, 0); text-decoration: none;" target="_blank">新疆巴音郭楞蒙古自治州启动了2022年“文化和自然遗产日”暨新疆第十届非物质文化遗产周展演活动。</ a>
                <div class="instagram-hover-content text-center d-flex align-items-center justify-content-center">
                    <a href="">
                        <i class="ti-instagram" ></i>
                        <span></span>
                    </a>
                </div>
            </div>
            <!-- Single Instagram Item -->
            <div class="single-instagram-item">
            <img src="../img/7732bd957d5606b5b6214b132cfaf74.png" / class="auto-style6">
                  <a href="http://cul.china.com.cn/2022-05/10/content_41965221.htm " rel="noreferrer" style="color: rgb(255, 0, 0); text-decoration: none;" target="_blank">让非遗在保护传承中绽放光彩</ a>
                <div class="instagram-hover-content text-center d-flex align-items-center justify-content-center"  >
                    <a href="#">
                        <i class="ti-instagram" ></i>
                        <span></span>
                    </a>
                </div>
            </div>
            <!-- Single Instagram Item -->
            <div class="single-instagram-item">
              <img src="../img/b8c4527c41649814cc4cf86880abba54.jpg"class="auto-style5" />
                <a href="https://baike.baidu.com/item/%E5%9B%BD%E5%AE%B6%E7%BA%A7%E9%9D%9E%E7%89%A9%E8%B4%A8%E6%96%87%E5%8C%96%E9%81%97%E4%BA%A7%E5%90%8D%E5%BD%95/2490096 " rel="noreferrer" style="color: rgb(255, 0, 0); text-decoration: none;" target="_blank">国家级非物质文化遗产名录</ a>
                <div class="instagram-hover-content text-center d-flex align-items-center justify-content-center">
                    <a href="#">
                        <i class="ti-instagram" ></i>
                        <span></span>
                    </a>
                </div>
            </div>
            <!-- Single Instagram Item -->
            <div class="single-instagram-item">
               <img src="../img/fhzz6.jpg" class="auto-style4" />
                <a href="http://www.qstheory.cn/qshyjx/2022-02/07/c_1128337397.htm" rel="noreferrer" style="color: rgb(255, 0, 0); text-decoration: none;" target="_blank">把非物质文化遗产保护好传承好</ a>
                <div class="instagram-hover-content text-center d-flex align-items-center justify-content-center">
                    <a href="#">
                        <i class="ti-instagram" ></i>
                        <span></span>
                    </a>
                </div>
            </div>
            <!-- Single Instagram Item -->
            <div class="single-instagram-item">
              <img src="../images/fhzz4.jpg" class="auto-style7" />
                <a href="https://www.sohu.com/a/561524376_426335 " rel="noreferrer" style="color: rgb(255, 0, 0); text-decoration: none;" target="_blank">非遗丨数字化何以激活非遗艺术 </ a>
                <div class="instagram-hover-content text-center d-flex align-items-center justify-content-center">
                    <a href="#">
                        <i class="ti-instagram" aria-hidden="true"></i>
                        <span></span>
                    </a>
                </div>
            </div>
            <!-- Single Instagram Item -->
            <div class="single-instagram-item">
               <img src="../images/1.jpg" class="auto-style8" />
                <a href=http://sh.news.cn/2022-06/29/c_1310635002.htm " rel="noreferrer" style="color: rgb(255, 0, 0); text-decoration: none;" target="_blank">《国际非遗文典》出版问世，国际非遗大展将于7月举办</ a>
                <div class="instagram-hover-content text-center d-flex align-items-center justify-content-center">
                    <a href="#">
                        <i class="ti-instagram" aria-hidden="true"></i>
                        <span></span>
                    </a>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
