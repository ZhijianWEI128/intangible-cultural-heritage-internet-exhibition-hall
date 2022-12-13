﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class Login : System.Web.UI.Page
{
    Operation operation = new Operation();　//声明业务类
    Random random = new Random();　　　　　//声明随机类对象
  
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string Check1 = Convert.ToString(Request.Cookies["CheckCode"].Value);

        if (Check1 != txtCheckCode.Text.Trim())    //判断验证码
        {
            WebMessageBox.Show("输入验证码不正确！", "Login - admin.aspx");
        }
        if (operation.Logon2(account.Text, Password.Text).Tables[0].Rows.Count > 0)  //判断用户是否合法。
        {
            Session.Add("UserName", account.Text.Trim());  //将用户名称存储在Session中,用于判断非法用户进行后台。
            Response.Redirect("Default.aspx");　　//用户名称或密码正确，进入后台首页
        }
        else
        {
            WebMessageBox.Show("用户名称或密码不正确！", "Login - admin.aspx");
        }


    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
            Response.Redirect("Register.aspx");　　//用户名称或密码正确，进入后台首页

    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}
