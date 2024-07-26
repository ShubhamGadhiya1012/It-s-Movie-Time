using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie
{
    public partial class Admin_signin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
        }
        protected void loginBtn(object sender, EventArgs e)
        {
            cmd.CommandText = "Select * from Admin_Signup where Email='" + AdminEmailSignin.Text + "' and password='" + AdminPasswordSignin.Text + "'";
            cmd.Connection = con;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "Admin_Signup");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["log"] = "true";
                Response.Redirect("Admin_Dashboard.aspx");
            }

        }
    }
}