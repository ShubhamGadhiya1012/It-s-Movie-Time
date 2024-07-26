using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Security.Cryptography;
using System.Xml.Linq;

namespace Movie
{
    public partial class Admin_movies : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;
        String pid;


        public string[] mid { get; set; }
        public string[] mname { get; set; }
        public string[] mrating { get; set; }
        public string[] mdescription { get; set; }
        public string[] mstory { get; set; }
        public string[] mimage { get; set; }
        public string[] mcategory { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            con.Close();
            retdata();
        }

        protected void publishBtn(object sender, EventArgs e)
        {
            String categeroy_name = "";

            if (Action.Checked)
            {
                categeroy_name = Action.Text;
            }
            else if (Comedy.Checked)
            {
                categeroy_name = Comedy.Text;
            }
            else if (Romantic.Checked)
            {

                categeroy_name = Romantic.Text;
            }


            String filename = Path.GetFileName(Movie_upload.PostedFile.FileName);
            Stream fs = Movie_upload.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] imagecode = br.ReadBytes((Int32)fs.Length);

            con.Open();


            SqlCommand cmd = new SqlCommand("insert into AdminMovies" + "(name,rating,description,story,image,category)values(@name,@rating,@des,@story,@image,@category)", con);
            cmd.Parameters.AddWithValue("@name", MovieName.Text);
            cmd.Parameters.AddWithValue("@rating", Rating.Text);
            cmd.Parameters.AddWithValue("@des", MovieDesc.Text);
            cmd.Parameters.AddWithValue("@story", MovieStory.Text);
            cmd.Parameters.AddWithValue("@image", imagecode);
            cmd.Parameters.AddWithValue("@category", categeroy_name);
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Redirect("Admin_movies.aspx");
        }

        public void retdata()
        {
            datacount();

            mid = new string[len];
            mname = new string[len];
            mrating = new string[len];
            mdescription = new string[len];
            mstory = new string[len];
            mimage = new string[len];
            mcategory = new string[len];
            



            con.Open();


            cmd = new SqlCommand("SELECT * FROM AdminMovies", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String m_id = reader.GetInt32(0).ToString();
                String m_name = reader.GetString(1);
                String m_rating = reader.GetString(2);
                String m_desc = reader.GetString(3);
                String m_story = reader.GetString(4);
                String m_category = reader.GetString(6);

                bytes1 = (byte[])reader["image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
                mid.SetValue(m_id, i);
                mname.SetValue(m_name, i);
                mrating.SetValue(m_rating, i);
                mdescription.SetValue(m_desc, i);
                mstory.SetValue(m_story, i);
                mcategory.SetValue(m_category, i);
                mimage.SetValue(url, i);
                i++;



            }
            con.Close();



        }





        public void datacount()
        {

            String Connectionstring = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";


            String query = "select count(*) from AdminMovies";
            using (SqlConnection connection = new SqlConnection(Connectionstring))
            {

                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                len = (int)command.ExecuteScalar();
                Console.WriteLine(len);

                connection.Close();
            }




        }




    }
}