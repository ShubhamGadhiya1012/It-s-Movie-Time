using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Movie
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        String data;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            data = Email_signin.Text;

            
        }

        protected void forgot(object sender, EventArgs e)
        {
            
                Session["email"] = Email_signin.Text;



                cmd.CommandText = "Select * from Signup where email='" + Email_signin.Text + "' ";
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                sda.Fill(ds, "Signup");
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["log"] = "true";
                    Response.Redirect("New_Password.aspx");
                }







            }
        }
        }
