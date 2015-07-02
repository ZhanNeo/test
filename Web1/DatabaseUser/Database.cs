using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DatabaseUser
{
    public class Database
    {
           public string connectionString;
           public string sql;
           SqlConnection conn;           
           SqlDataAdapter dr;
           DataSet ds;
           DataTable mytable;

           public void Init_database()
           {
               connectionString = "server=localhost;database=system;integrated security=SSPI"; ;
               conn = new SqlConnection(connectionString);
           }

           public DataTable get_Table(string tableName)
           {
               sql = "select * from "+tableName;
               dr = new SqlDataAdapter(sql, conn);
               ds = new DataSet();
               dr.Fill(ds, tableName);
               mytable = new DataTable();
               mytable = ds.Tables[tableName];
               return mytable;
           }
           public DataSet get_DataSet(string tableName)
           {
               sql = "select * from "+tableName;
               dr = new SqlDataAdapter(sql, conn);
               ds = new DataSet();
               dr.Fill(ds, tableName);
               return ds;
           }

           #region 订单
           public void del_BItem(string Sno, string mytable1)
           {
               get_Table(mytable1);
               int temp = 0;
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["ONO"].ToString().Trim().Equals(Sno))
                   {
                       break;
                   }
                   temp++;
               }
               mytable.Rows[temp].Delete();
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void change_BItem(string Sno, string beChangedFlag, string changeMess, string mytable1)
           {
               get_Table(mytable1);
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["ONO"].ToString().Trim().Equals(Sno))
                   {
                       myRow[beChangedFlag] = changeMess;
                   }
               }
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void add_BItem(int No, string Name, string Address, string Email, string mytable1,string Count = "0")
           {
               get_Table(mytable1);
               mytable = new DataTable();
               mytable = ds.Tables[mytable1];
               DataRow myRow = mytable.NewRow();
               myRow["UNO"] = No;
               myRow["ONAME"] = Name;
               myRow["OADDRESS"] = Address;
               myRow["OEMAIL"] = Email;
               myRow["Count"] = Count;
               mytable.Rows.Add(myRow);
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           #endregion

           #region 商品
           public void del_FItem(string Sno, string mytable1)
           {
               get_Table(mytable1);
               int temp = 0;
               string no = null;
               switch (mytable1)
               {
                   case "FruitList": no = "FrNo";
                       break;
                   case "CondimentList": no = "CNO";
                       break;
                   case "FisheryList": no = "FiNO";
                       break;
                   case "VegetableList": no = "VNO";
                       break;
                   case "MeatList": no = "MNO";
                       break;
                   default: break;

               }
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow[no].ToString().Trim().Equals(Sno))
                   {
                       break;
                   }
                   temp++;
               }
               mytable.Rows[temp].Delete();
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void change_FItem(string Sno, string beChangedFlag, string changeMess, string mytable1)
           {
               get_Table(mytable1);
               string no = null;
               switch (mytable1)
               {
                   case "FruitList": no = "FrNo";
                       break;
                   case "CondimentList": no = "CNO";
                       break;
                   case "FisheryList": no = "FiNO";
                       break;
                   case "VegetableList": no = "VNO";
                       break;
                   case "MeatList": no = "MNO";
                       break;
                   default: break;

               }
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow[no].ToString().Trim().Equals(Sno))
                   {
                       myRow[beChangedFlag] = changeMess;
                   }
               }
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void add_FItem(string Name, string Image, string Sold, string Fc, string mytable1)
           {
               get_Table(mytable1);
               string name = null;
               string image = null;
               string sold = null;
               string category = null;
               switch (mytable1)
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
               mytable = new DataTable();
               mytable = ds.Tables[mytable1];
               DataRow myRow = mytable.NewRow();
               myRow[name] = Name;
               myRow[image] = Image;
               myRow[sold] = Sold;
               myRow[category] = Fc;
               mytable.Rows.Add(myRow);
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }   
           #endregion

           #region 用户
           public void del_UserItem(string Sno, string mytable1)
           {
               get_Table(mytable1);
               int temp = 0;
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["UNO"].ToString().Trim().Equals(Sno))
                   {
                       break;
                   }
                   temp++;
               }
               mytable.Rows[temp].Delete();
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void change_UserItem(string Sno, string beChangedFlag, string changeMess, string mytable1)
           {
               get_Table(mytable1);
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["UNO"].ToString().Trim().Equals(Sno))
                   {
                       myRow[beChangedFlag] = changeMess;
                   }
               }
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void add_UserItem(string Name, string Password, string Address, string Email, string mytable1)
           {
               get_Table(mytable1);
               mytable = new DataTable();
               mytable = ds.Tables[mytable1];
               DataRow myRow = mytable.NewRow();
               myRow["UNAME"] = Name;
               myRow["UPASSWORD"] = Password;
               myRow["UADDRESS"] = Address;
               myRow["UEMAIL"] = Email;
               mytable.Rows.Add(myRow);
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }   
           #endregion
            
           #region 管理员
           public void del_AdminItem(string Sno, string mytable1)
           {
               get_Table(mytable1);
               int temp = 0;
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["MNO"].ToString().Trim().Equals(Sno))
                   {
                       break;
                   }
                   temp++;
               }
               mytable.Rows[temp].Delete();
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void change_AdminItem(string Sno, string beChangedFlag, string changeMess, string mytable1)
           {
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["MNO"].ToString().Trim().Equals(Sno))
                   {
                       myRow[beChangedFlag] = changeMess;
                   }
               }
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void add_AdminItem(string Name, string Password, string mytable1)
           {
               mytable = new DataTable();
               mytable = ds.Tables[mytable1];
               DataRow myRow = mytable.NewRow();
               myRow["MNAME"] = Name;
               myRow["MPASSWORD"] = Password;
               mytable.Rows.Add(myRow);
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }               
           #endregion

           #region 评论
           public void add_Eve(string UNo,string BNo,string bNo, string comment, string mytable1)
           {
               get_Table(mytable1);
               mytable = new DataTable();
               mytable = ds.Tables[mytable1];
               DataRow myRow = mytable.NewRow();
               myRow["UNO"] = int.Parse(UNo.Trim());
               myRow["BNO"] = int.Parse(BNo.Trim());
               myRow["BNAME"] = bNo;
               myRow["Evaluation"] = comment;
               mytable.Rows.Add(myRow);
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           } 
           #endregion

           #region 推荐
           public void add_Home(string name, string location, string mytable1)
           {
               get_Table(mytable1);
               mytable = new DataTable();
               mytable = ds.Tables[mytable1];
               DataRow myRow = mytable.NewRow();
               myRow["HoNAME"] = name;
               myRow["HoIMAGE"] = location;
               mytable.Rows.Add(myRow);
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void del_HomeItem(string Sno, string mytable1)
           {
               get_Table(mytable1);
               int temp = 0;
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["HoNAME"].ToString().Trim().Equals(Sno.Trim()))
                   {
                       break;
                   }
                   temp++;
               }
               mytable.Rows[temp].Delete();
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           public void change_HomeItem(string Sno, string beChangedFlag, string changeMess, string mytable1)
           {
               get_Table(mytable1);
               foreach (DataRow myRow in mytable.Rows)
               {
                   if (myRow["HoNAME"].ToString().Trim().Equals(Sno.Trim()))
                   {
                       myRow[beChangedFlag] = changeMess;
                   }
               }
               SqlCommandBuilder msq = new SqlCommandBuilder(dr);
               dr.Update(ds, mytable1);
           }
           #endregion
    }
}
