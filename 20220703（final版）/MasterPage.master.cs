using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["id"] == null)
            {
                Label1.Text = "登陆/注册";
            }
            else
            {
                UserIndex.Text = "<a href='UserIndex.aspx'>个人中心</a>";
                Label1.Text = "退出";
            }
        }
    }
}
