using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseUser;
using System.Data;

namespace Web1.guanli
{
    public partial class guanliyuan : System.Web.UI.Page
    {
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            db.Init_database();
            DataTable mytable = db.get_Table("UserList");
            if (!this.IsPostBack)
            {
                this.GridView1.DataSource = db.get_DataSet("UserList");
                this.GridView1.DataBind();
            }

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                TableCell cell = new TableCell();

                LinkButton link = new LinkButton();
                link.ID = GridView1.Rows[i].Cells[1].Text + "change";
                link.Text = "编辑";
                link.Click += new EventHandler(Button2_Click);

                Label lb=new Label();
                lb.Text= "&nbsp;";

                LinkButton link2 = new LinkButton();
                link2.Text = "删除";
                link2.ID = GridView1.Rows[i].Cells[1].Text + "del";
                link2.Click += new EventHandler(Button3_Click);

                cell.Controls.Add(link);
                cell.Controls.Add(lb);
                cell.Controls.Add(link2);
                GridView1.Rows[i].Cells.Add(cell);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            hid.Style.Add("display", "block");
            divInform.Style.Add("display", "block");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = ((LinkButton)sender).ID.Replace("change", ""); ;
            hid.Style.Add("display", "block");
            change.Style.Add("display", "block");
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            divInform.Style.Add("display", "none");
            hid.Style.Add("display", "none");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            db.add_UserItem(TextBox5.Text, TextBox6.Text,TextBox7.Text, TextBox8.Text, "UserList");
            Response.Redirect(Request.Url.ToString());
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text.Length !=0)
            {
                db.change_UserItem(Label1.Text, "UNAME", TextBox3.Text, "UserList");
            }
            if (TextBox4.Text.Length != 0)
            {
                db.change_UserItem(Label1.Text, "UPASSWORD", TextBox4.Text, "UserList");
            }
            if (TextBox1.Text.Length != 0)
            {
                db.change_UserItem(Label1.Text, "UADDRESS", TextBox1.Text, "UserList");
            }
            if (TextBox2.Text.Length != 0)
            {
                db.change_UserItem(Label1.Text, "UEMAIL", TextBox2.Text, "UserList");
            }
            Response.Redirect(Request.Url.ToString());
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            change.Style.Add("display", "none");
            hid.Style.Add("display", "none");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string mNo = ((LinkButton)sender).ID.Replace("del", "");
            db.del_UserItem(mNo, "UserList");
            Response.Redirect(Request.Url.ToString());
        }

    }
}