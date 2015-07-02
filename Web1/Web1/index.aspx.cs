using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DatabaseUser;

namespace Web1
{
    public partial class index : System.Web.UI.Page
    {
        bool Flag;
        DataTable mytable;
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {         
            db = new Database();
            db.Init_database();
            mytable = new DataTable();
            if (Request.QueryString.Get("id") != null)
            {
                string temp = Request.QueryString.Get("id").ToString();
                Label5.Text = temp;
                 mytable = db.get_Table("UserList");
                 foreach (DataRow myRow in mytable.Rows)
                 {
                     if (myRow["UNO"].ToString().Trim().Equals(temp))
                     {
                         temp = myRow["UNAME"].ToString();
                     }
                 }
                Label2.Text = temp;
                Label2.Visible = true;
                LinkButton1.Visible = false;
            }
        }
     

        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {

        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            hid.Style.Add("display", "none");
            divInform.Style.Add("display", "none");
        }
        protected void Button5_Click(object sender, EventArgs e)
        {
            mytable = db.get_Table("UserList");
            foreach (DataRow myRow in mytable.Rows)
            {
                string temp = myRow["UNAME"].ToString();
                if (temp.Trim().Equals(TextBox5.Text))
                {
                    Flag = true;
                    if (myRow["UPASSWORD"].ToString().Trim().Equals(TextBox6.Text))
                    {
                        LinkButton1.Visible = false;
                        Label2.Text = myRow["UNAME"].ToString();
                        Label5.Text= myRow["UNO"].ToString();
                        Label2.Visible = true;
                        hid.Style.Add("display", "none");
                        divInform.Style.Add("display", "none");
                        break;
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
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            hid.Style.Add("display", "block");
            divInform.Style.Add("display", "block");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (Label2.Text.Length==0)
            {
                Response.Write("<script>window.alert('请先登录')</script>");
            }
            else
            {
                Response.Redirect("~/yonghu/yonghudingdan.aspx?id=" + Label5.Text);
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (Label2.Text.Length == 0)
            {
                Response.Write("<script>window.alert('请先登录')</script>");
            }
            else
            {
                Response.Redirect("~/yonghu/gouwuche.aspx?id=" + Label5.Text);
            }
        }
    }
}