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
    public partial class AdminMovies_Update : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["uid"] == null || Request.QueryString["uid"].Length == 0)
            {
                Response.Redirect("Admin_movies.aspx");
            }
            else
            {
                id = Request.QueryString["uid"];

            }

        }
        protected void retrive(object sender, EventArgs e)
        {
            getData(Request.QueryString["uid"]);
        }

        public void getData(string id)
        {


            

            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM AdminMovies where id=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {

                TextBox1.Text = reader.GetString(1);
                TextBox2.Text = reader.GetString(2);
                TextBox3.Text = reader.GetString(3);
                TextBox4.Text = reader.GetString(4);
                

            }
            con.Close();
            reader.Close();


            //movieBtn.Enabled = false;

            movieBtn.Visible = true;


            Button button = new Button();

           


        }





        public void publishBtn(object sender, EventArgs e)
        {





            id = Request.QueryString["uid"];
            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            string query = "UPDATE AdminMovies SET name=@name1, rating=@name2, description=@name3, story=@name4 WHERE id=@id";

            // Create a new SqlCommand object
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            cmd.Parameters.AddWithValue("@name1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@name2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@name3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@name4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect("Admin_movies.aspx");
            // Execute the update query

        }

    }
}