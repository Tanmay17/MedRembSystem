using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.DataAccess.Client;
using System.Data;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Sid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
            }
            Response.Expires = 0;
            Response.Cache.SetNoStore();
            Response.AppendHeader("Pragma", "no-cache");
            ShowData();
        }
        public void ShowData()
        {
            string oradb = "DATA SOURCE=TANMAY:1521/XE;USER ID=TANMAY;Password=123;";
            using (OracleConnection conn = new OracleConnection(oradb)) 
            using(OracleCommand cmd = new OracleCommand("SELECT R_ID,P_NAME,D_NAME,RELATION,AMT,R_TYPE,DESCR FROM APPLY WHERE (STATUS='N')", conn))
            {
                conn.Open();
                using (OracleDataReader reader = cmd.ExecuteReader())
                {
                    DataTable dataTable = new DataTable();
                    dataTable.Load(reader);
                    GridView1.DataSource = dataTable;
                    GridView1.DataBind();
                }
                conn.Close();
            }
        }
        public int GenerateRandomNo()
        {
            int _min = 1000;
            int _max = 9999;
            Random _rdm = new Random();
            return _rdm.Next(_min, _max);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string field1 = (string)(Session["field1"]);
            string oradb = "DATA SOURCE=TANMAY:1521/XE;USER ID=TANMAY;Password=123;";
            OracleConnection conn = new OracleConnection(oradb);
            OracleCommand cmd = new OracleCommand();
            int rid = GenerateRandomNo();
            cmd.CommandText = "INSERT INTO APPLY VALUES ('" + field1 + "','" + rid + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedItem.Value + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedItem.Value + "','N')";
            cmd.Connection = conn;
            conn.Open();
            if ((TextBox1.Text == "") & (TextBox2.Text == "") & (TextBox4.Text == "") & (TextBox5.Text == "") & (TextBox6.Text == ""))
            {
                Label1.Visible = true;
                Label1.Text = "Insert All The Values";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                cmd.ExecuteNonQuery();
                conn.Close();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                TextBox6.Text = "";
                DropDownList1.SelectedIndex = 2;
                DropDownList2.SelectedIndex = 0;
                Label1.Visible = true;
                Label1.Text = "Note: Copy this RID: " + rid + " to see the status in future";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string field1 = (string)(Session["field1"]);
            string oradb = "DATA SOURCE=TANMAY:1521/XE;USER ID=TANMAY;Password=123;";
            OracleConnection conn = new OracleConnection(oradb);
            OracleCommand cmd = new OracleCommand();
            string ri = TextBox3.Text;
            cmd.CommandText = "SELECT P_NAME,AMT,STATUS FROM APPLY WHERE (R_ID='" + ri + "' AND U_ID='" + field1 + "')";
            cmd.Connection = conn;
            conn.Open();
            Label2.Visible = false;
            try
            {
                OracleDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        String pname = dr["P_NAME"].ToString();
                        String amot = dr["AMT"].ToString();
                        String stat = dr["STATUS"].ToString();
                        rid.Text = ri;
                        name.Text = pname;
                        amt.Text = amot;
                        if (stat == "N")
                        {
                            status.Text = "NO";
                        }
                        else
                        {
                            status.Text = "YES";
                        }

                        //Response.Write(pname);
                    }
                }
                else
                {
                    Label2.Visible = true;
                    Label2.Text = "Re-Check your RID";
                }

            }
            catch { }
            finally
            {
                conn.Close();
            }
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            MainView.ActiveViewIndex = 2;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void lnkSelect_Click(object sender, EventArgs e)
        {
            string rid = Convert.ToString((sender as LinkButton).CommandArgument);
            string oradb = "DATA SOURCE=TANMAY:1521/XE;USER ID=TANMAY;Password=123;";
            OracleConnection conn = new OracleConnection(oradb);
            OracleCommand cmd = new OracleCommand();
            cmd.CommandText ="UPDATE APPLY SET STATUS='Y' WHERE (R_ID='"+rid+"')";
            cmd.Connection = conn;
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}