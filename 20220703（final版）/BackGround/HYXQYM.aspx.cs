using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class HYXQYM : System.Web.UI.Page
{
    Operation operation = new Operation();
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["id"].ToString();
        DataSet ds = operation.SelectUserInfo(id);
        txtType.Text = ds.Tables[0].Rows[0]["id"].ToString();
        txtTitle.Text = ds.Tables[0].Rows[0]["username"].ToString();
        txtTitle0.Text = ds.Tables[0].Rows[0]["password"].ToString();
        txtLinkMan.Text = ds.Tables[0].Rows[0][3].ToString();
   
    }
}
