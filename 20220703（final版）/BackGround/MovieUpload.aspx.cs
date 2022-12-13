using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MovieUpload : System.Web.UI.Page
{
    Operation operation = new Operation();
    protected DataRowCollection drs = null;//绑定页面数据的全局变量
    protected void Page_Load(object sender, EventArgs e)
    {
        string opearID = null;
        //验证成功表示用户点击了页面上的操作按钮
        if ((opearID = Request.Form["deletemovie"]) != null && opearID != "")
        {
            this.deletemovie(opearID);
        }

        BindData();
    }


    protected void Button1_Click1(object sender, EventArgs e)
    {
        Operation op = new Operation();
        string path = Server.MapPath("~/upload/");
        string filetype = FileUpload1.FileName.Substring(FileUpload1.FileName.LastIndexOf(".") + 1);
        string filename = FileUpload1.FileName;
        if (FileUpload1.HasFile)
        {
            if (FileUpload1.FileBytes.Length < 100 * 1024 * 1024) //100m
            {
                if (filetype.ToLower() == "mp4".ToLower() || filetype.ToUpper() == "avi".ToUpper())
                {
                    int flag = op.InsertMovies(filename, path);
                    if (flag > 0)
                    {
                        FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                        WebMessageBox.Show("文件上传成功!");
                    }
                    else
                    {
                        WebMessageBox.Show("文件上传失败!");
                    }
                }
                else
                {
                    WebMessageBox.Show("文件类型出错!");
                }
            }
            else
            {
                WebMessageBox.Show("文件太大，请重新选择!");
            }
        }
        else
        {
            WebMessageBox.Show("请选择要上传的文件!");
        }
    }

    public void BindData()
    {
       
        var data = operation.SelectMovice();

        if(data != null && data.Tables[0] != null)
        {
            this.drs = data.Tables[0].Rows;
        }

    }

    public void deletemovie(string id)
    {
        operation.DeleteMovice(id);
        BindData();
    }

}

            




            
