using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Web.SessionState;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Expires = 0;
            Response.Cache.SetNoStore();
            Response.AppendHeader("Pragma", "no-cache");
        }
   
        protected void Button1_Click(object sender, EventArgs e)
        {
            String id = TextBox_loginID.Text;
            String pass = TextBox_loginPass.Text;
            string oradb = "DATA SOURCE=TANMAY:1521/XE;USER ID=TANMAY;Password=123;";
            OracleConnection conn = new OracleConnection(oradb);
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText = "SELECT PASS,ROLE FROM LOGIN WHERE ID='"+id+"'";
            cmd.Connection = conn;
            conn.Open();
            try
            { 
                OracleDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    String p = dr["PASS"].ToString();
                    String r = dr["ROLE"].ToString();
                    if (p == pass)
                    {
                        if(r == "U")
                        {
                            Session["field1"] = id;
                            Session["Sid"] = Session.SessionID;
                            Response.Redirect("User.aspx");
                        }else {
                            Session["field1"] = id;
                            Session["Sid"] = Session.SessionID;
                            Response.Redirect("Admin.aspx");
                        }
                    }
                    else{
                        Label1.Visible = true;
                        Label1.Text = "Incorrect Password";
                    }
                }     
            }
            catch
            {
                Console.Write("Error encountered during INSERT operation.");
            }
            finally
            {
                conn.Close();
            }
        }
    }
}