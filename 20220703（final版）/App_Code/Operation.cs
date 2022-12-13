﻿using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data.SqlClient;

using System.Web.UI;

/// <summary>
/// Operation 网站业务流程类（封装所有业务方法）
/// </summary>
public class Operation
{
    public Operation()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    DataBase data = new DataBase();

    #region  添加留言信息
    /// <summary>
    /// 添加供求信息
    /// </summary>
    /// <param name="type">信息类别</param>
    /// <param name="title">标题</param>
    /// <param name="info">内容</param>
    /// <param name="linkMan">联系人</param>
    /// <param name="tel">联系电话</param>
    public void InsertInfo(string type, string title, string info, string linkMan, string tel)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@type",SqlDbType.VarChar,50,type),
            data.MakeInParam("@title",SqlDbType.VarChar,50,title),
            data.MakeInParam("@info",SqlDbType.VarChar,500,info),
            data.MakeInParam("@linkMan",SqlDbType.VarChar,50,linkMan),
            data.MakeInParam("@tel",SqlDbType.VarChar,50,tel),
        };
        int i = data.RunProc("INSERT INTO tb_info (type, title, info, linkman, tel,checkState) VALUES (@type, @title,@info,@linkMan, @tel, 0)", parms);
    }

    #endregion

    #region  修改留言信息 
    /// <summary>
    /// 修改供求信息的审核状态
    /// </summary>
    /// <param name="id">信息ID</param>
    /// <param name="type">信息类型</param>
    public void UpdateInfo(int id, bool type)
    {
        if (type)
        {
            data.RunProc("UPDATE tb_info SET checkState = 0 WHERE (ID = " + id + ")");
        }
        else
        {
            data.RunProc("UPDATE tb_info SET checkState = 1 WHERE (ID = " + id + ")");
        }
    }
    #endregion

    #region  删除留言信息

    /// <summary>
    /// 删除指定的供求信息
    /// </summary>
    /// <param name="id">供求信息ＩＤ</param>
    public void DeleteInfo(string id)
    {
        int d = data.RunProc("Delete from tb_info where id='" + id + "'");
    }

    #endregion

    #region  查询留言信息

    /// <summary>
    /// 按类型进行分页查询供求信息
    /// </summary>
    /// <param name="type">供求信息类型</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectInfo(string type, int PageIndex, int PageSize)
    {
        int StartIndex = ((PageIndex - 1) * PageSize) + 1;
        int EndIndex = PageIndex * PageSize;
        SqlParameter[] parms = { data.MakeInParam("@type", SqlDbType.VarChar, 50, type) };
        return data.RunProcReturn("select count(1) from tb_info where type=@type;select * from(SELECT ID, type, title, info, linkman, tel, checkState, date,Row_Number() over(ORDER BY date DESC) as rowIndex FROM tb_info where type=@type) as Tab where rowIndex between " + StartIndex + " and " + EndIndex, parms, "tb_info");
    }
    /// <summary>
    /// 按ID查询供求信息
    /// </summary>
    /// <param name="id">供求信息ＩＤ</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectInfo(int id)
    {
        return data.RunProcReturn("SELECT ID, type, title, info, linkman, tel, checkState, date FROM tb_info where ID=" + id + " ORDER BY date DESC", "tb_info1");
    }

    /// <summary>
    /// 供求信息快速检索
    /// </summary>
    /// <param name="type">信息类型</param>
    /// <param name="infoSearch">查询信息的关键字</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectInfo(string type, string infoSearch)
    {
        SqlParameter[] pars ={
            data.MakeInParam("@type", SqlDbType.VarChar, 50, type) ,
            data.MakeInParam("@info",SqlDbType.VarChar,50,"%"+infoSearch+"%")
        };
        return data.RunProcReturn("select * from tb_info where (type=@type) and (info like @info) and (checkstate=1)", pars, "tb_info");
    }
    #endregion

    #region 添加收费供求信息

    /// <summary>
    /// 添加收费供求信息
    /// </summary>
    /// <param name="type">信息类型</param>
    /// <param name="title">信息标题</param>
    /// <param name="info">信息内容</param>
    /// <param name="linkMan">联系人</param>
    /// <param name="tel">联系电话</param>
    /// <param name="sumDay">有时天数</param>
    public void InsertLeaguerInfo(string type, string title, string info, string linkMan, string tel, DateTime sumDay, bool checkState)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@type",SqlDbType.VarChar,50,type),
            data.MakeInParam("@title",SqlDbType.VarChar,50,title),
            data.MakeInParam("@info",SqlDbType.VarChar,500,info),
            data.MakeInParam("@linkMan",SqlDbType.VarChar,50,linkMan),
            data.MakeInParam("@tel",SqlDbType.VarChar,50,tel),
            data.MakeInParam("@showday",SqlDbType.DateTime,8,sumDay),
            data.MakeInParam("@CheckState",SqlDbType.Bit,8,checkState)
        };
        int i = data.RunProc("INSERT INTO tb_LeaguerInfo (type, title, info, linkman, tel,showday,checkState) VALUES (@type, @title,@info,@linkMan, @tel,@showday,@CheckState)", parms);
    }
    #endregion

    #region  删除收费供求信息
    /// <summary>
    /// 删除收费供求信息
    /// </summary>
    /// <param name="id">要删除信息的ＩＤ</param>
    public void DeleteLeaguerInfo(string id)
    {
        int d = data.RunProc("Delete from tb_LeaguerInfo where id='" + id + "'");
    }
    #endregion

    #region  查询收费供求信息
    /// <summary>
    /// 按指定过期条件和分页配置显示收费信息
    /// </summary>
    /// <returns>返回DataSet结果集</returns>
    public DataSet SelectLeaguerInfo(int PageIndex, int PageSize, int ShowDayType)
    {
        int StartIndex = ((PageIndex - 1) * PageSize) + 1;
        int EndIndex = PageIndex * PageSize;
        string where = "";
        if (ShowDayType == 1)
        {
            where = "where showday >= getdate()";
        }
        else if (ShowDayType == 2)
        {
            where = "where showday < getdate()";
        }
        return data.RunProcReturn("select count(1) from tb_LeaguerInfo " + where + ";select * from (Select *,Row_Number() over(order by date desc) as RowIndex from tb_LeaguerInfo " + where + ") as tab where RowIndex between " + StartIndex + " and " + EndIndex, "tb_LeaguerInfo");
    }

    /// <summary>
    /// 查询同类型收费到期和未到期供求信息
    /// </summary>
    /// <param name="all">True显示未到期信息,False显示到期信息</param>
    /// <param name="infoType">信息类型</param>
    /// <returns>返回DataSet结果集</returns>
    public DataSet SelectLeaguerInfo(bool All, string infoType)
    {
        if (All) 　　　　 //显示有效收费信息
            return data.RunProcReturn("Select * from tb_LeaguerInfo where type='" + infoType + "' and showday >= getdate() order by date desc", "tb_LeaguerInfo");
        else　　　　　　　//显示过期收费信息
            return data.RunProcReturn("select * from tb_LeaguerInfo where type='" + infoType + "' and showday<getdate() order by date desc", "tb_LeaguerInfo");
    }
    /// <summary>
    /// 查询显示‘按类型未过期推荐信息’或‘所有的未过期推荐信息’
    /// </summary>
    /// <param name="infoType">信息类型</param>
    /// <param name="checkState">True按类型显示未过期推荐信息  False显示所有未过期推荐信息</param>
    /// <returns></returns>
    public DataSet SelectLeaguerInfo(string infoType, bool checkState)
    {
        if (checkState) 　 //按类型未过期推荐信息
            return data.RunProcReturn("SELECT top 20 * FROM tb_LeaguerInfo WHERE (type = '" + infoType + "') AND (showday >= GETDATE()) AND (CheckState = '" + checkState + "') ORDER BY date DESC", "tb_LeaguerInfo");
        else　　　　　　　//显示未过期推荐信息
            return data.RunProcReturn("SELECT top 10 * FROM tb_LeaguerInfo WHERE (showday >=GETDATE()) AND (CheckState = '" + !checkState + "') ORDER BY date DESC", "tb_LeaguerInfo");
    }
    /// <summary>
    /// 查询同类型收费到期和未到期供求信息(前Ｎ条信息)
    /// </summary>
    /// <param name="all">True显示有效收费信息,False显示过期收费信息</param>
    /// <param name="infoType">信息类型</param>
    /// <param name="top">获取前Ｎ条信息</param>
    /// <returns></returns>
    public DataSet SelectLeaguerInfo(bool All, string infoType, int top)
    {
        if (All) 　　　　 //显示有效收费信息
            return data.RunProcReturn("Select top(" + top + ") * from tb_LeaguerInfo where type='" + infoType + "' and showday >= getdate() order by date desc", "tb_LeaguerInfo");
        else　　　　　　　//显示过期收费信息
            return data.RunProcReturn("select top(" + top + ") * from tb_LeaguerInfo where type='" + infoType + "' and showday<getdate() order by date desc", "tb_LeaguerInfo");
    }
    /// <summary>
    /// 根据ＩＤ查询收费供求信息
    /// </summary>
    /// <param name="id">供求信息ＩＤ</param>
    /// <returns></returns>
    public DataSet SelectLeaguerInfo(string id)
    {
        return data.RunProcReturn("Select * from tb_LeaguerInfo where id='" + id + "' order by date desc", "tb_LeaguerInfo");
    }

    /// <summary>
    /// 根据ID修改收费供求信息是否为推荐信息
    /// </summary>
    /// <param name="id">供求信息ID</param>
    public void UpdateLeaguerInfo(string id, bool CheckState)
    {
        if (CheckState)
        {
            data.RunProcReturn("update tb_LeaguerInfo set CheckState=0 where id=" + id + "", "tb_LeaguerInfo");
        }
        else
        {
            data.RunProcReturn("update tb_LeaguerInfo set CheckState=1 where id=" + id + "", "tb_LeaguerInfo");
        }
    }

    #endregion

    #region  分页设置绑定
    /// <summary>
    /// 绑定DataList控件，并且设置分页
    /// </summary>
    /// <param name="infoType">信息类型</param>
    /// <param name="infoKey">查询的关键字（如果为空，则查询所有）</param>
    /// <param name="currentPage">当前页</param>
    /// <param name="PageSize">每页显示数量</param>
    /// <returns>返回PagedDataSource对象</returns>
    public PagedDataSource PageDataListBind(string infoType, string infoKey, int currentPage, int PageSize)
    {
        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = SelectInfo(infoType, infoKey).Tables[0].DefaultView; //将查询结果绑定到分页数据源上。
        pds.AllowPaging = true;　　　　　　　　　　//允许分页
        pds.PageSize = PageSize;　　　　　　　　 　//设置每页显示的页数
        pds.CurrentPageIndex = currentPage - 1;　  //设置当前页
        return pds;
    }
    #endregion

    #region 后台管理员登录

    public DataSet Logon(string user, string pwd)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@sysName",SqlDbType.VarChar,20,user),
            data.MakeInParam("@sysPwd",SqlDbType.VarChar,20,pwd)
        };
        return data.RunProcReturn("Select * from tb_Power where sysName=@sysName and sysPwd=@sysPwd", parms, "tb_Power");
    }
    public DataSet Logon2(string username, string password)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@Username",SqlDbType.NVarChar,100,username),
            data.MakeInParam("@Password",SqlDbType.NVarChar,100,password)
        };
        return data.RunProcReturn("Select * from User1 where username=@username and Password=@Password", parms, "User1");
    }
    public int InsertFiles(string filename, string serverPath)


    {
        SqlParameter[] par =
        {
            data.MakeInParam("@a",SqlDbType.VarChar,100,filename),
            data.MakeInParam("@b",SqlDbType.VarChar,100,serverPath),

        };
        return data.RunProc("insert into tb_Image values(@a,@b)", par);
    }

    public int DeleteFile(int id)
    {
        return data.RunProc("delete from tb_files where ID=" + id);
    }

    public DataSet SelectImage(int id)
    {
        return data.RunProcReturn("select serverPath from tb_Image where ID =" + id, "tb_Image");
    }
    public DataSet SelectImage()
    {
        return data.RunProcReturn("select * from tb_Image", "tb_Image");
    }
    public int DeleteImage(int id)
    {
        return data.RunProc("delete from tb_Image where ID=" + id);
    }

    public DataSet SelectFile()
    {
        return data.RunProcReturn("select * from tb_files", "tb_files");
    }
    public DataSet SelectFile(int id)
    {
        return data.RunProcReturn("select * from tb_files where ID =" + id, "tb_files");
    }

    #endregion

    #region 查询视频信息
    
    /// <summary>
    /// 查询视频ByID
    /// </summary>
    /// <returns>返回查询结果DataSet数据集</returns>
    public string SelectMoviceName(string id)
    {
        var dt = data.RunProcReturn("select TOP 1 MOVIENAME from tb_movie WHERE ID = " + id , "tb_movice");
        if (dt != null && dt.Tables.Count > 0 && dt.Tables[0].Rows.Count>0)
        {
            return dt.Tables[0].Rows[0][0].ToString();
        }
        else return "";
    }
    /// <summary>
    /// 查询视频列表
    /// </summary>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectMovice()
    {
        return data.RunProcReturn("select * from tb_movie ", null, "tb_movice");
    }

    /// <summary>
    /// ruku
    /// </summary>
    /// <param name="filename"></param>
    /// <param name="path"></param>
    /// <returns></returns>
    public int InsertMovies(string filename, string path)
    {
        SqlParameter[] parms ={
            data.MakeInParam("@MovieName",SqlDbType.VarChar,255,filename),
            data.MakeInParam("@MovieUrl",SqlDbType.VarChar,255,path + filename),
        };
        return data.RunProc("INSERT INTO tb_movie (MovieName, MovieUrl) VALUES (@MovieName, @MovieUrl)", parms);
    }

    /// <summary>
    /// 查询视频列表
    /// </summary>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet DeleteMovice(string id)
    {
        return data.RunProcReturn("delete tb_movie where id = " + id + "", null, "tb_movice");
    }

    #endregion

    #region  查询用户账号

    /// <summary>
    /// 分页查询用户账号
    /// </summary>
    /// <param name="type">供求信息类型</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectUserPage(string type, int PageIndex, int PageSize)
    {
        int StartIndex = ((PageIndex - 1) * PageSize) + 1;
        int EndIndex = PageIndex * PageSize;
        return data.RunProcReturn("select count(1) from user1;select * from(SELECT *,Row_Number() over(ORDER BY id DESC) as rowIndex FROM user1) as Tab where rowIndex between " + StartIndex + " and " + EndIndex, "user1");
    }
    /// <summary>
    /// 按ID查询用户账号
    /// </summary>
    /// <param name="id">供求信息ＩＤ</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet SelectUserInfo(string id)
    {
        return data.RunProcReturn("SELECT * FROM user1 where ID=" + id, "user1");
    }
    /// <summary>
    /// 按Idshanchu用户账号
    /// </summary>
    /// <param name="id">供求信息ＩＤ</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet DeleteUser(string id)
    {
        return data.RunProcReturn("delete from user1 where ID=" + id, "user1");
    }
    /// <summary>
    /// 按Id审核用户账号
    /// </summary>
    /// <param name="id">供求信息ＩＤ</param>
    /// <returns>返回查询结果DataSet数据集</returns>
    public DataSet CheckUser(string id, bool state)
    {
        return data.RunProcReturn("update user1 set checkstate = " + (state ? 1 : 0) + "  where ID=" + id, "user1");
    }
}
#endregion
