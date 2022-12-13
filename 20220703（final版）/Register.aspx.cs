using System;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, EventArgs e)
    {
        if (username.Text.Equals(""))
        {
            WebMessageBox.Show("用户名不能为空！", "Register.aspx");
        }
        else if (password.Text.Equals(""))
        {
            WebMessageBox.Show("密码不能为空！", "Register.aspx");
        }
        else if (repassword.Text.Equals(""))
        {
            WebMessageBox.Show("确认密码不能为空！", "Register.aspx");
        }
        else if (!password.Text.Equals(repassword.Text))
        {
            WebMessageBox.Show("确认密码有误！", "Register.aspx");
        }
        else
        {
            string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\db_SIS.mdf;Integrated Security=True";
            SqlConnection conn = new SqlConnection(str);
            conn.Open();
            SqlCommand comm = new SqlCommand("select * from User1 where Username=@Username", conn);
            comm.Parameters.Add("@Username", username.Text);
            SqlDataReader sdr = comm.ExecuteReader();
            if (sdr.Read())
            {
            WebMessageBox.Show("无法注册，该用户名已被占用！", "Register.aspx");
                username.Text = "";
            }
            else
            {
                sdr.Close();
                comm = new SqlCommand("insert into User1(Username, Password) values(@Username, @Password)", conn);
                comm.Parameters.Add("@Username", username.Text);
                comm.Parameters.Add("@Password", password.Text);
                comm.ExecuteNonQuery();
                Response.Redirect("Login - admin.aspx");
            }
            conn.Close();
        }
    }
}