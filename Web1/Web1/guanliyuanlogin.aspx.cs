using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using DatabaseUser;

namespace Web1
{
    public partial class guanliyuanlogin : System.Web.UI.Page
    {
        bool Flag;
        DataTable mytable;
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            db.Init_database();
            mytable = new DataTable();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mytable = db.get_Table("ManagerList");
            foreach (DataRow myRow in mytable.Rows)
            {
                string temp = myRow["MNAME"].ToString();
                if (temp.Trim().Equals(TextBox1.Text))
                {
                    Flag = true;
                    if (myRow["MPASSWORD"].ToString().Trim().Equals(TextBox2.Text))
                    {
                        Response.Redirect("houtai.aspx");
                    }
                    else
                    {
                        Response.Write("<script>window.alert('密码错误')</script>"); 
                    }
                }
                else
                {
                    Flag = false;
                }
            }
            if (!Flag)
            {
                Response.Write("<script>window.alert('用户名错误')</script>"); 
            }
        }
    }
}