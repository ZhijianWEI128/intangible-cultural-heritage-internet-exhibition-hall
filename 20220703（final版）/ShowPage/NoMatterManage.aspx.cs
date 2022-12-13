using BLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_NoMatterManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [WebMethod]
    public static string loadNoMatterManage(string pi, string ps)
    {
        NoMatterBLL a = new NoMatterBLL();
        int rwStart = (Convert.ToInt32(pi) - 1) * Convert.ToInt32(ps);
        int rwEnd = (Convert.ToInt32(pi) - 1) * Convert.ToInt32(ps) + Convert.ToInt32(ps);
        DataSet ds = a.NoMatterBllSelectPage(rwStart, rwEnd);
        string html = "";
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            //得到列表数据
            html += "<tr><td>" + (i + 1) + "</td><td class='hidden-xs'>" + ds.Tables[0].Rows[i]["Title"] + "</td><td class='hidden-xs'>" + ds.Tables[0].Rows[i]["Content"] + "</td><td><video src='" + ds.Tables[0].Rows[i]["VideoUrl"] + "' style='width:25px;height:25px;' autoplay='autoplay' /></td><td class='hidden-xs'>" + ds.Tables[0].Rows[i]["addDate"] + "</td><td><a class='layui-btn layui-btn-small layui-btn-normal' href='ModifyNoMatter.aspx?id=" + ds.Tables[0].Rows[i]["id"] + "'>修改</a><input type='button' value='删除' class='btn layui-btn layui-btn-small layui-btn-normal' id='" + ds.Tables[0].Rows[i]["id"] + "'/></td></tr>";
        }
        return html;
    }
    //删除列表信息
    [WebMethod]
    public static int RemoveNoMatterManage(string id)
    {
        NoMatterBLL a = new NoMatterBLL();
        try
        {
            a.NoMatterBllDelete(id);
            return 1;
        }
        catch (Exception e)
        {
            return 0;
            throw;
        }
    }
}