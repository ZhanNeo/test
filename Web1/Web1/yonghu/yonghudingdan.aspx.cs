using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DatabaseUser;

namespace Web1.yonghu
{
    public partial class yonghudingdan : System.Web.UI.Page
    {
        Database db;
        DataTable mytable;
        DataTable mytable2;
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = Request.QueryString.Get("id").ToString();
            Label1.Text = temp;
            db = new Database();
            db.Init_database();
            mytable = db.get_Table("OrderForm");
            mytable2 = db.get_Table("UserList");
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("ONO"));
            table.Columns.Add(new DataColumn("ID"));
            table.Columns.Add(new DataColumn("Name"));
            table.Columns.Add(new DataColumn("ADDRESS"));
            table.Columns.Add(new DataColumn("EMAIL"));
            table.Columns.Add(new DataColumn("COUNT"));
            if (!this.IsPostBack)
            {
                for(int i=0;i<mytable.Rows.Count;i++)
                {
                    if (mytable.Rows[i]["UNO"].ToString().Trim().Equals(Label1.Text))
                    {
                        DataRow sourseRow = table.NewRow();
                        sourseRow["ONO"] = mytable.Rows[i]["ONO"];
                        sourseRow["ID"] = mytable.Rows[i]["UNO"];
                        sourseRow["Name"] = mytable.Rows[i]["ONAME"];
                        sourseRow["ADDRESS"] = mytable.Rows[i]["OADDRESS"];
                        sourseRow["EMAIL"] = mytable.Rows[i]["OEMAIL"];
                        sourseRow["COUNT"] = mytable.Rows[i]["COUNT"];
                        table.Rows.Add(sourseRow);
                    }
                }
                for (int i = 0; i < mytable2.Rows.Count; i++)
                {
                    if (mytable2.Rows[i]["UNO"].ToString().Trim().Equals(Label1.Text))
                    {
                        Label16.Text = mytable2.Rows[i]["UNAME"].ToString();
                        Label17.Text = mytable2.Rows[i]["UPASSWORD"].ToString();
                        Label18.Text = mytable2.Rows[i]["UADDRESS"].ToString();
                        Label19.Text = mytable2.Rows[i]["UEMAIL"].ToString();
                    }
                }
                GridView1.DataSource = table;
                GridView1.DataBind();
            }
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                TableCell cell = new TableCell();

                LinkButton link = new LinkButton();
                link.ID = GridView1.Rows[i].Cells[0].Text + "check";
                link.Text = "查看";
                link.Click += new EventHandler(Button2_Click);

                Label lb = new Label();
                lb.Text = "&nbsp;";

                LinkButton link2 = new LinkButton();
                link2.Text = "删除";
                link2.ID = GridView1.Rows[i].Cells[0].Text + "del";
                link2.Click += new EventHandler(Button3_Click);

                Label lb2 = new Label();
                lb2.Text = "&nbsp;";

                LinkButton link3 = new LinkButton();
                link3.Text = "评论";
                link3.ID = GridView1.Rows[i].Cells[0].Text + "pinglun";
                link3.Click += new EventHandler(Button6_Click);

                cell.Controls.Add(link);
                cell.Controls.Add(lb);
                cell.Controls.Add(link2);
                cell.Controls.Add(lb2);
                cell.Controls.Add(link3);
                GridView1.Rows[i].Cells.Add(cell);
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Label3.Text = ((LinkButton)sender).ID.Replace("check", "");
            Label3.Visible = false;
            Label5.Text = getName(Label3.Text);
            Label6.Text = getAddress(Label3.Text);
            Label7.Text = getEmail(Label3.Text);
            Label9.Text = getONO(Label3.Text);
            Label10.Text = getOName(Label3.Text);
            Label11.Text = getCount(Label3.Text);
            hid.Style.Add("display", "block");
            check.Style.Add("display", "block");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            string mNo = ((LinkButton)sender).ID.Replace("del", "");
            for (int i = 0; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["ONO"].ToString().Trim().Equals(mNo))
                {
                    mNo = mytable.Rows[i]["ONO"].ToString();
                }
            }
            db.del_BItem(mNo, "OrderForm");
            Response.Redirect(Request.Url.ToString());
        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            check.Style.Add("display", "none");
            hid.Style.Add("display", "none");
            pinglun.Style.Add("display", "none");
        }

        protected string getName(string Uno)
        {
            string uName=null;
            for (int i = 0; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["ONO"].ToString().Trim().Equals(Uno))
                {
                    uName = mytable.Rows[i]["UNO"].ToString();
                }
            }
            return uName;
        }
        protected string getAddress(string Uno)
        {
            string uAddress = null;
            for (int i = 0; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["ONO"].ToString().Trim().Equals(Uno))
                {
                    uAddress = mytable.Rows[i]["OADDRESS"].ToString();
                }
            }
            return uAddress;
        }
        protected string getEmail(string Uno)
        {
            string uEmail = null;
            for (int i = 0; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["ONO"].ToString().Trim().Equals(Uno))
                {
                    uEmail = mytable.Rows[i]["OEMAIL"].ToString();
                }
            }
            return uEmail;
        }
        protected string getOName(string Uno)
        {
            string uOName = null;
            for (int i = 0; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["ONO"].ToString().Trim().Equals(Uno))
                {
                    uOName = mytable.Rows[i]["ONAME"].ToString();
                }
            }
            return uOName;
        }
        protected string getONO(string Uno)
        {
            string uONO = null;
            for (int i = 0; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["ONO"].ToString().Trim().Equals(Uno))
                {
                    uONO = mytable.Rows[i]["ONO"].ToString();
                }
            }
            return uONO;
        }
        protected string getCount(string Uno)
        {
            string uCount = null;
            for (int i = 0; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["ONO"].ToString().Trim().Equals(Uno))
                {
                    uCount = mytable.Rows[i]["COUNT"].ToString();
                }
            }
            return uCount;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx?id=" + Label1.Text);
        }
        protected void Button6_Click(object sender, EventArgs e)
        {
            Label25.Text=((LinkButton)sender).ID.Replace("pinglun", "");           
            pinglun.Style.Add("display", "block");
            hid.Style.Add("display", "block");
           
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextBox1.Visible = true;
            Label16.Visible = false;
            LinkButton2.Visible = true;
            LinkButton1.Visible = false;

        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            TextBox2.Visible = true;
            Label17.Visible = false;
            LinkButton4.Visible = true;
            LinkButton3.Visible = false;
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            TextBox3.Visible = true;
            Label18.Visible = false;
            LinkButton6.Visible = true;
            LinkButton5.Visible = false;
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            TextBox4.Visible = true;
            Label19.Visible = false;
            LinkButton8.Visible = true;
            LinkButton7.Visible = false;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            db.change_UserItem(Label1.Text, "UNAME", TextBox1.Text, "UserList");
            TextBox1.Visible = false;
            Label16.Visible = true;
            LinkButton2.Visible = false;
            LinkButton1.Visible = true;
            Response.Redirect(Request.Url.ToString());
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            db.change_UserItem(Label1.Text, "UPASSWORD", TextBox2.Text, "UserList");
            TextBox2.Visible = false;
            Label17.Visible = true;
            LinkButton4.Visible = false;
            LinkButton3.Visible = true;
            Response.Redirect(Request.Url.ToString());
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            db.change_UserItem(Label1.Text, "UADDRESS", TextBox3.Text, "UserList");
            TextBox3.Visible = false;
            Label18.Visible = true;
            LinkButton6.Visible = false;
            LinkButton5.Visible = true;
            Response.Redirect(Request.Url.ToString());
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            db.change_UserItem(Label1.Text, "UEMAIL", TextBox4.Text, "UserList");
            TextBox4.Visible = false;
            Label19.Visible = true;
            LinkButton8.Visible = false;
            LinkButton7.Visible = true;
            Response.Redirect(Request.Url.ToString());
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string NAME = getOName(Label25.Text);
            DataTable dt = db.get_Table("VegetableList");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["VNAME"].ToString().Trim().Equals(NAME.Trim()))
                {
                    Label25.Text = dt.Rows[i]["VNO"].ToString();
                }
            }
            dt = db.get_Table("MeatList");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["MNAME"].ToString().Trim().Equals(NAME.Trim()))
                {
                    Label25.Text = dt.Rows[i]["MNO"].ToString();
                }
            }
            dt = db.get_Table("FruitList");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["FrNAME"].ToString().Trim().Equals(NAME.Trim()))
                {
                    Label25.Text = dt.Rows[i]["FrNO"].ToString();
                }
            }
            dt = db.get_Table("FisheryList");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["FiNAME"].ToString().Trim().Equals(NAME.Trim()))
                {
                    Label25.Text = dt.Rows[i]["FiNO"].ToString();
                }
            }
            dt = db.get_Table("CondimentList");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if (dt.Rows[i]["CNAME"].ToString().Trim().Equals(NAME.Trim()))
                {
                    Label25.Text = dt.Rows[i]["CNO"].ToString();
                }
            }
            db.add_Eve(Label1.Text,Label25.Text, NAME, TextBox5.Text, "UserEvaluation");
            pinglun.Style.Add("display", "none");
            hid.Style.Add("display", "none");
        }
    }
}