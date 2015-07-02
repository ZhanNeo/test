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
    public partial class guanliindex : System.Web.UI.Page
    {
        Database db;
        protected void Page_Load(object sender, EventArgs e)
        {
            db = new Database();
            db.Init_database();
            this.GridView1.DataSource = db.get_DataSet("ManagerList");
            this.GridView1.DataBind();

            this.GridView3.DataSource = db.get_DataSet("UserList");
            this.GridView3.DataBind(); 
        }
    }
}