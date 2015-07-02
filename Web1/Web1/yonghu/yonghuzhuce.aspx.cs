using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseUser;
using System.Data;

namespace Web1.yonghu
{
    public partial class yonghuzhuce : System.Web.UI.Page
    {
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            db.Init_database();
            DataTable mytable = db.get_Table("UserList");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            db.add_UserItem(TextBox1.Text, TextBox2.Text, TextBox3.Text, TextBox4.Text, "UserList");
            Response.Write("<script>window.alert('注册成功,请返回主页登陆')</script>");
            Response.Redirect("~/index.aspx");
        }
    }
}