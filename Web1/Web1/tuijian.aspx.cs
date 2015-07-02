using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseUser;
using System.Data;

public partial class veg1 : System.Web.UI.Page
{
    public string pics = "''";
    public string links = "''";
    Database db;
    DataTable mytable;
    protected void Page_Load(object sender, EventArgs e)
    {
        int i;
        db = new Database();
        db.Init_database();
        mytable = db.get_Table("HomePage");
        pics = null;
        for (i = 0; i < mytable.Rows.Count-1; i++)
        {
            pics += "'" + mytable.Rows[i]["HoIMAGE"].ToString().Trim() + "'" + "+ '|' +";
        }
        pics += "'" + mytable.Rows[i]["HoIMAGE"].ToString().Trim() + "'";
    }
}