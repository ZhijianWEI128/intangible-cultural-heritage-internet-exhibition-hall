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
using System.Data.SqlClient;


public partial class Admin_AddNoMatter : System.Web.UI.Page
{
    Alert a = new Alert();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //设置文件的保存路径
        string savePath = Server.MapPath("~/VideoUrl/");
        string Url = "";
        string Name = "";
        //判断是否有文件上传
        if (Title.Value == "")
        {
            a.Alertjs("标题不能为空！");
        }
        else if (Content.Value == "")
        {
            a.Alertjs("内容不能为空！");
        }
        else
        {
            if (FileUpload1.HasFile)
            {
                //判断是否存在这个文件夹
                if (!System.IO.Directory.Exists(savePath))
                {
                    //如果没有这个文件夹，就创建一个
                    System.IO.Directory.CreateDirectory(savePath);
                }
                Url = "/VideoUrl/" + FileUpload1.FileName + "";
                Name = FileUpload1.FileName;
                savePath = savePath + "\\" + FileUpload1.FileName;
                //文件保存
                FileUpload1.SaveAs(savePath);
                try
                {
                    try
                    {
                       
                        Alert.AlertAndRedirect("添加成功！", "AddNoMatter.aspx");
                    }
                    catch
                    {
                        a.Alertjs("添加失败！");
                    }
                }
                catch
                {

                }
            }
            else
            {
                //没有上传文件
                a.Alertjs("请上传视频");
            }
        }
    }
}