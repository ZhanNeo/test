using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using DatabaseUser;
using System.Data;

namespace Web1.yonghu
{
    public partial class gouwuche : System.Web.UI.Page
    {
        Database db;
        DataTable mytable;
        XmlDocument xd;
        XmlNode root;
        XmlNodeList items;
        protected void Page_Load(object sender, EventArgs e)
        {
            string temp = Request.QueryString.Get("id").ToString();
                Label1.Text = temp;
                db = new Database();
                db.Init_database();
                mytable = db.get_Table("UserList");
            xd = new XmlDocument();
            xd.Load(Server.MapPath("gouwuche.xml"));
            root = xd.DocumentElement;
            items = root.ChildNodes;

            foreach (XmlNode item in items)
            {
                TableRow tr = new TableRow();
                TableCell tc = new TableCell();
                foreach (XmlNode p in item)
                {
                    if (p.InnerText.StartsWith("~"))
                    {
                        Image im = new Image();
                        im.Width = 60;
                        im.Height = 50;
                        im.ImageUrl = p.InnerText;
                        tc.Controls.Add(im);
                        tr.Cells.Add(tc);
                        tc = new TableCell();
                        
                    }
                    else
                    {
                        TableCell tc2 = new TableCell();
                        tc2.Text = p.InnerText;
                        tr.Cells.Add(tc2);
                    }
                    Table1.Rows.Add(tr);
                }              
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string uNo = Label1.Text;
            string oADDRESS = null;
            string oEmail = null;
            string oName = null;
            string Count = null;
            int i;
            for (i = 1; i < mytable.Rows.Count; i++)
            {
                if (mytable.Rows[i]["UNO"].ToString().Trim().Equals(uNo))
                {
                    oADDRESS = mytable.Rows[i]["UADDRESS"].ToString();
                    oEmail = mytable.Rows[i]["UEMAIL"].ToString();
                }
            }
            for (i = 0; i < Table1.Rows.Count-1; i++)
            {
                oName += Table1.Rows[i].Cells[0].Text+";";
                Count += Table1.Rows[i].Cells[1].Text + ";";
            }
            oName += Table1.Rows[i].Cells[0].Text;
            Count += Table1.Rows[i].Cells[1].Text;
            db.add_BItem(int.Parse(uNo), oName, oADDRESS, oEmail, "OrderForm", Count);
            root = xd.DocumentElement;
            root.RemoveAll();
            xd.Save(Server.MapPath("gouwuche.xml"));
            Response.Write("<script>window.alert('下单成功')</script>");
            Response.Redirect("~/index.aspx?id=" + Label1.Text);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            root = xd.DocumentElement;
            root.RemoveAll();
            xd.Save(Server.MapPath("gouwuche.xml"));
            Response.Redirect("~/index.aspx?id=" + Label1.Text);
        }
    }
}