<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

int reValue;
//省略Page_Load事件
//注册新用户
protected void btnOk_Click(object sender,EventArgs e)
{
    reValue = CheckName();
    if(reValue == -1)
    {
         Response.Write(<script>alert('用户名存在！');</script>);
    }
    else
    {
       DB db = new DB();
       string UserName = this.txtUserName.Text;
       string PassWord = db.GetMD5(this.txtPwd.Text.ToString());
       string Email = this.txtEmail.Text;
       
       string cmdstr = "insert into tb_User(UserName,PassWord,Email) values('"+UserName+"','" + PassWord+ "','" + Email + "')";
       try
       {
          reValue = db.sqlEx(cmdstr);
          if(reValue == 1)
          {
               Response.Write(<script>alert('注册成功！');</script>);
               Clear();//清空文本框
          }
          else if(reValue == 0)
          {
             Response.Write(<script>alert('注册失败！');</script>);
          }
       }
       catch(Exception ee)
       {
          Response.Write(<script>alert('注册失败！');</script>);
       }
    }
}

//检查用户是否存在
protected void lnkbtnCheck(object sender,EventArgs e)
{
  reValue = CheckName();
  if(reValue == -1)
  {
      Response.Write(<script>alert('用户名存在！');</script>);
      this.txtUserName.Focus();
  }
  else if(reValue == 2)
  {
    Response.Write(<script>alert('恭喜您！该用户名尚未注册');</script>);
      this.txtUserName.Focus();
 
  }
}
public int CheckName()
{
  DB db = new DB();
  string str = "select count(*) from tb_User where UserName = '" + this.txtUserName.Text+"'";
  try
  {
    DataTable dt = db.reDt(str);
    if(dt.Rows[0][0].ToString() != 0)
    {
       return -1;//用户名已经存在
    }
    else
    {
      return 2;//该用户名尚未注册
    }
  }
  catch(Expection ee)
  {
     return 0;
  }
  
}

