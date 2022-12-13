using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default3 : System.Web.UI.Page
{

    Operation operation = new Operation();　//声明业务层类对象

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void imgBtnAdd_Click(object sender, ImageClickEventArgs e)
    {
        operation.InsertInfo(DropDownList1.Text, txtTitle.Text.Trim(), txtInfo.Text.Trim(), txtLinkMan.Text.Trim(), txtTel.Text.Trim());
        WebMessageBox.Show("信息发布成功！", "Default3.aspx");
    }
}