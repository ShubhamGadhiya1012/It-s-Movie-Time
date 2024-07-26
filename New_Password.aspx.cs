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
    public partial class New_Password : System.Web.UI.Page
    {
        String data;
        String data2;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            con.Close();
            data = Session["Email"].ToString();
            data2 = pass.Text;
        }

        protected void newpass(object sender, EventArgs e)
        {

            string query = "UPDATE Signup SET password=@dname1 WHERE email=@email";

            // Create a new SqlCommand object
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@dname1", pass.Text);
            cmd.Parameters.AddWithValue("@email", data);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Login.aspx");







        }
    }
}