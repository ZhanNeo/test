using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DatabaseUser;
using System.Xml;

namespace Web1.yonghu
{
    public partial class pork : System.Web.UI.Page
    {
        DataTable mytable;
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            db.Init_database();
            mytable = new DataTable();
            mytable = db.get_Table("MeatList");
            foreach (DataRow myRow in mytable.Rows)
            {
                if (myRow["FCATEGORY"].ToString().Trim() == "6")
                {
                    Panel p1 = new Panel();
                    p1.Width = 250;
                    p1.Height = 230;
                    p1.Style.Value = "float:left";
                    Image im = new Image();
                    im.ImageUrl = myRow["MIMAGE"].ToString();
                    im.Width = 250;
                    im.Height = 200;
                    Label la = new Label();
                    la.Text = "购买数量:";
                    TextBox tt = new TextBox();
                    tt.Width = 40;
                    tt.ID = myRow["MNAME"].ToString();
                    Label la2 = new Label();
                    la2.Text = "   ";
                    Button bt = new Button();
                    bt.Height = 30;
                    bt.ID = myRow["MNAME"].ToString() + "?" + myRow["MIMAGE"].ToString();
                    bt.Click += new EventHandler(Button2_Click);
                    bt.Text = "加入购物车";
                    p1.Controls.Add(im);
                    p1.Controls.Add(la);
                    p1.Controls.Add(tt);
                    p1.Controls.Add(la2);
                    p1.Controls.Add(bt);
                    Panel1.Controls.Add(p1);
                }
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string[] name = ((Button)sender).ID.Split('?');
            string count = null;
            foreach (Control ct in Panel1.Controls)
            {
                if (ct is Panel)
                {
                    foreach (Control ct1 in ct.Controls)
                    {
                        if (ct1 is TextBox)
                        {
                            TextBox tb = (TextBox)ct1;
                            if (tb.ID.Trim() == name[0].Trim())
                            {
                                count = tb.Text;
                            }
                        }
                    }
                }
            }
            XmlDocument xd = new XmlDocument();
            xd.Load(Server.MapPath("gouwuche.xml"));
            XmlNode root = xd.DocumentElement;
            XmlElement newItem = xd.CreateElement("item");
            XmlElement newName = xd.CreateElement("name");
            XmlElement newNumber = xd.CreateElement("count");
            XmlElement newImage = xd.CreateElement("image");
            newName.InnerText = name[0].Trim();
            newNumber.InnerText = count;
            newImage.InnerText = name[1].Trim();
            root.AppendChild(newItem);
            newItem.AppendChild(newName);
            newItem.AppendChild(newNumber);
            newItem.AppendChild(newImage);
            xd.Save(Server.MapPath("gouwuche.xml"));
        }
    }
}