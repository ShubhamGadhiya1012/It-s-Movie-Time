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
    public partial class Admin_sinup : System.Web.UI.Page
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
        protected void signupbtn(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Admin_Signup" + "(name,email,password)values(@name,@email,@pass)", con);
            cmd.Parameters.AddWithValue("@name", AdminNameSignup.Text);
            cmd.Parameters.AddWithValue("@email", AdminEmailSignup.Text);
            cmd.Parameters.AddWithValue("@pass", AdminPasswordSignup.Text);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";

            Response.Redirect("Admin_Dashboard.aspx");

        }
    }
}