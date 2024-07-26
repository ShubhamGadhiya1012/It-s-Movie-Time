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
    public partial class Contact : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            con.Close();


            var ses = Session["log"];
            if (ses != null)
            {
                object sessionValue = Session["log"];
                if (sessionValue == "true")
                {

                }
            }
            else
            {

                Response.Redirect("Login.aspx");
            }

            String em = Session["Email"].ToString();
            C_Email.Text = em;
        }
        protected void Contact_submit(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into ContactUs" + "(name,email,subject,message)values(@c_name,@c_email,@c_subject,@c_message)", con);
            cmd.Parameters.AddWithValue("@c_name", C_Name.Text);
            cmd.Parameters.AddWithValue("@c_email", C_Email.Text);
            cmd.Parameters.AddWithValue("@c_subject", C_Subject.Text);
            cmd.Parameters.AddWithValue("@c_message", C_Message.Text);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";

            con.Close();
            Response.Redirect("Contact.aspx");

        }
    }
}