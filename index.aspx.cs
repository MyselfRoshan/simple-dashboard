using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SimpleDashboard
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data Source=DESKTOP-D52U51E;Initial Catalog=UserDB;Integrated Security=True";
            con.Open();
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string pass = password.Text.Trim();
            int i = 0;
            cmd.CommandText = "select * from login where username='" + username.Text + "' and password='" + password.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "login");
            if (ds.Tables[i].Rows.Count > 0)
            {
                if (pass == ds.Tables[i].Rows[i]["password"].ToString())
                {
                    Response.Redirect("dashboard.html");
                }
            }
        }
    }
}