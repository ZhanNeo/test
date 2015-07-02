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
    public partial class shangpin : System.Web.UI.Page
    {
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            db.Init_database();
            if (!this.IsPostBack)
            {
                this.GridView1.DataSource = db.get_DataSet("VegetableList");
                this.GridView1.DataBind();
               
                this.GridView2.DataSource = db.get_DataSet("MeatList");
                this.GridView2.DataBind();
               
                this.GridView3.DataSource = db.get_DataSet("FisheryList");
                this.GridView3.DataBind();
               
                this.GridView4.DataSource = db.get_DataSet("CondimentList");
                this.GridView4.DataBind();
                
                this.GridView5.DataSource = db.get_DataSet("FruitList");
                this.GridView5.DataBind();
               
            }
            this.GridView1.ID = "VegetableList";
            this.GridView2.ID = "MeatList";
            this.GridView3.ID = "FisheryList";
            this.GridView4.ID = "CondimentList";
            this.GridView5.ID = "FruitList";
            set(GridView1);
            set(GridView2);
            set(GridView3);
            set(GridView4);
            set(GridView5);
        }

        public void set(GridView gd)
        {
            for (int i = 0; i < gd.Rows.Count; i++)
            {
                TableCell cell = new TableCell();

                LinkButton link = new LinkButton();
                link.ID = gd.ID+";"+gd.Rows[i].Cells[0].Text + "change";
                link.Text = "编辑";
                link.Click += new EventHandler(Button2_Click);

                Label lb = new Label();
                lb.Text = "&nbsp;";

                LinkButton link2 = new LinkButton();
                link2.Text = "删除";
                link2.ID = gd.ID+";"+gd.Rows[i].Cells[0].Text + "del";
                link2.Click += new EventHandler(Button3_Click);

                cell.Controls.Add(link);
                cell.Controls.Add(lb);
                cell.Controls.Add(link2);
                gd.Rows[i].Cells.Add(cell);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            hid.Style.Add("display", "block");
            divInform.Style.Add("display", "block");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = ((LinkButton)sender).ID;
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
            string temp=null;
            if (DropDownList1.SelectedValue.Equals("1") || DropDownList1.SelectedValue.Equals("2"))
            {
                temp = "VegetableList";
            }
            else if (DropDownList1.SelectedValue.Equals("3") || DropDownList1.SelectedValue.Equals("4") || DropDownList1.SelectedValue.Equals("5") || DropDownList1.SelectedValue.Equals("6") || DropDownList1.SelectedValue.Equals("7") || DropDownList1.SelectedValue.Equals("8"))
            {
                temp = "MeatList";
            }
            else if (DropDownList1.SelectedValue.Equals("9") || DropDownList1.SelectedValue.Equals("10"))
            {
                temp = "FisheryList";
            }
            else if (DropDownList1.SelectedValue.Equals("11") || DropDownList1.SelectedValue.Equals("12") || DropDownList1.SelectedValue.Equals("13") || DropDownList1.SelectedValue.Equals("14"))
            {
                temp = "CondimentList";
            }
            else if (DropDownList1.SelectedValue.Equals("15"))
            {
                temp = "FruitList";
            }
            db.add_FItem(TextBox6.Text, TextBox7.Text, TextBox8.Text, DropDownList1.SelectedValue, temp);
            Response.Redirect(Request.Url.ToString());
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            string[] temp = Label1.Text.Split(';');
            string mNo = temp[1].Replace("change", "");
            string name = null;
            string image = null;
            string sold = null;
            string category = null;
            switch (temp[0])
            {
                case "FruitList": name = "FrNAME"; image = "FrIMAGE"; sold = "FrSOLD"; category = "FCATEGORY";
                    break;
                case "CondimentList": name = "CNAME"; image = "CIMAGE"; sold = "CSOLD"; category = "FCATEGORY";
                    break;
                case "FisheryList": name = "FiNAME"; image = "FiIMAGE"; sold = "FiSOLD"; category = "FCATEGORY";
                    break;
                case "VegetableList": name = "VNAME"; image = "VIMAGE"; sold = "VSOLD"; category = "FCATEGORY";
                    break;
                case "MeatList": name = "MNAME"; image = "MIMAGE"; sold = "MSOLD"; category = "FCATEGORY"; ;
                    break;
                default: break;

            }
            if (TextBox1.Text.Length != 0)
            {
                db.change_FItem(mNo, name, TextBox1.Text, temp[0]);
            }

            db.change_FItem(mNo, category, DropDownList1.SelectedValue, temp[0]);
            if (TextBox2.Text.Length != 0)
            {
                db.change_FItem(mNo, image, TextBox2.Text, temp[0]);
            }
            if (TextBox3.Text.Length != 0)
            {
                db.change_FItem(mNo, sold, TextBox3.Text, temp[0]);
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
            string[] temp = ((LinkButton)sender).ID.Split(';');
            string mNo = temp[1].Replace("del", "");
            db.del_FItem(mNo, temp[0]);
            Response.Redirect(Request.Url.ToString());
        }
    }
}