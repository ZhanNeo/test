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
    public partial class shicaixingxi : System.Web.UI.Page
    {
        DataTable mytable;
        DataTable mytable2;
        DataTable mytable3;
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            db.Init_database();
            mytable = new DataTable();
            mytable = db.get_Table("VegetableList");
            string temp = Request.QueryString.Get("id").ToString();
            Label2.Text = temp;
            foreach (DataRow myRow in mytable.Rows)
            {
                if (myRow["VNO"].ToString().Trim().Equals(Label2.Text.Trim()))
                {
                    Label4.Text = myRow["VNAME"].ToString();
                    Image1.ImageUrl = myRow["VIMAGE"].ToString();
                    Label5.Text = myRow["VSOLD"].ToString();
                }
            }
            mytable2 = db.get_Table("UserEvaluation");
            DataTable table = new DataTable();
            table.Columns.Add(new DataColumn("用户"));
            table.Columns.Add(new DataColumn("评论"));
            for (int i = 0; i < mytable2.Rows.Count; i++)
            {
                if (mytable2.Rows[i]["BNO"].ToString().Trim().Equals(Label2.Text))
                {
                    TableRow tr = new TableRow();
                    TableCell tc = new TableCell();
                    tc.Text = mytable2.Rows[i]["Evaluation"].ToString();
                    TableCell tc2 = new TableCell();
                    tc2.Text = "                        ";
                    TableCell tc3 = new TableCell();
                    tc3.Text = getName(mytable2.Rows[i]["UNO"].ToString());
                    tc3.Attributes.Add("style", "text-align:right");
                    tr.Cells.Add(tc);
                    tr.Cells.Add(tc2);
                    tr.Cells.Add(tc3);
                    Table1.Rows.Add(tr);
                }
            }
        }
        protected string getName(string no)
        {
            string Name=null;
            mytable3 = db.get_Table("UserList");
            foreach (DataRow myRow in mytable3.Rows)
            {
                if (myRow["UNO"].ToString().Trim().Equals(no.Trim()))
                {
                    Name = myRow["UNAME"].ToString();
                }
            }
            return Name;

        }
    }
}