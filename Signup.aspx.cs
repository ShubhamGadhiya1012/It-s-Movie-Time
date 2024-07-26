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
    public partial class Signup : System.Web.UI.Page
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

            Session["Email"] = Umail_signup.Text;
            SqlCommand cmd = new SqlCommand("insert into Signup" + "(Name,Email,Password)values(@name,@email,@pass)", con);
            cmd.Parameters.AddWithValue("@name", Uname_signup.Text);
            cmd.Parameters.AddWithValue("@email", Umail_signup.Text);
            cmd.Parameters.AddWithValue("@pass", Upass_signup.Text);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";

            Response.Redirect("HomePage.aspx");

        }
    }
}