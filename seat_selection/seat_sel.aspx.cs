using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Movie.seat_selection
{
    public partial class Seat_selection : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        int len;
        int i = 0;
        byte[] bytes1;
        String pid;
        String m_name;
        public string[] mid { get; set; }
        public string[] mname { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            con.Close();

            //if (Request.QueryString["id"] == null)
            //{
            //    Response.Redirect("MoviePage.aspx");
            //}
            //else
            //{
            //    con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            //    con.Open();
            //    con.Close();
            //    pid = Request.QueryString["id"];
            //}



            retdata();
            //moviename();


        }
        public void retdata()
        {
            datacount();

            mid = new string[len];
            mname = new string[len];




            con.Open();


            cmd = new SqlCommand("SELECT * FROM AdminMovies", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String m_id = reader.GetInt32(0).ToString();
                String m_name = reader.GetString(1);

                
                mid.SetValue(m_id, i);
                mname.SetValue(m_name, i);
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


        //public void moviename()
        //{
        //    String Connectionstring = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";


        //    con.Open();

            
        //    cmd = new SqlCommand("SELECT name FROM AdminMovies where id = '"+ pid +"'", con);
        //    SqlDataReader reader = cmd.ExecuteReader();
        //    while (reader.Read())
        //    {
                
        //         m_name = reader.GetString(1);
                
        //        i++;



        //    }
        //    lb1.Text = m_name;
        //    con.Close();

        //}
    }
}