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

public partial class webJJ : System.Web.UI.Page
{
    Operation operation = new Operation();
    protected DataRowCollection drs = null;//绑定页面数据的全局变量
    protected void Page_Load(object sender, EventArgs e)
    {
        var id = Request.Form["opearID"] ;
        if (!string.IsNullOrWhiteSpace(id))
        {
            var moviename = operation.SelectMoviceName(id);
            if (!string.IsNullOrWhiteSpace(moviename))
            {
                var path = "http://" + HttpContext.Current.Request.Url.Authority;
                path += "/upload/" + moviename;
                var response = base.Response;
                // Redirect temporarily. 
                // ... Don't throw an HttpException to terminate. 
                response.Redirect(path, false);
            }
        }
        else
            BindData();
    }
    public void BindData()
    {

        var data = operation.SelectMovice();

        if (data != null && data.Tables[0] != null)
        {
            this.drs = data.Tables[0].Rows;
        }


    }
}
