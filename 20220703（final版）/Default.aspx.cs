using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    Operation operation = new Operation();  //声明网站业务类对象
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)  //!IsPostBack避免重复刷新加载页面
        {
            //获取前6条分类供求信息
          
        }
    }
}
