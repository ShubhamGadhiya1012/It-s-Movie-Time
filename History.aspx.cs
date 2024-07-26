using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Movie
{
    public partial class History : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        SqlDataReader reader;



        int id;

        int len;
        int i = 0;

        byte[] bytes1;

        public string[] hemail { get; set; }
        public string[] hname { get; set; }
        public string[] hdate { get; set; }
        public string[] htime { get; set; }
        public string[] hseat { get; set; }
        public string[] hprice { get; set; }

        String em;
        protected void Page_Load(object sender, EventArgs e)
        {

            em = Session["Email"].ToString();
             
            //Label1.Text = em;



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

            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            con.Close();

            retdata();
           



        }



        public void retdata()
        {
            datacount();

            hname = new string[len];
            hemail = new string[len];
            hseat = new string[len];
            htime = new string[len];
            hdate = new string[len];
            hprice = new string[len];
            
            con.Open();



            //cmd = new SqlCommand("SELECT * FROM sign_up where email= '" + em + "'", con);
            //SqlDataReader reader = cmd.ExecuteReader();
            //while (reader.Read())
            //{
            //    id = reader.GetInt32(0);

            //}
            //reader.Close();



            cmd = new SqlCommand("SELECT * FROM Bookhistory where email= '" + em + "'", con);
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                String h_email = reader.GetString(2);
                String h_name = reader.GetString(1);
                String h_date = reader.GetString(3);
                String h_time = reader.GetString(4);
                String h_seat = reader.GetString(5);
                String h_price = reader.GetString(6);
               

                //hid.SetValue(h_id, i);
              
                hname.SetValue(h_name, i);
                hemail.SetValue(h_email, i);
                hdate.SetValue(h_date, i);
                htime.SetValue(h_time, i);
                hseat.SetValue(h_seat, i);
                hprice.SetValue(h_price, i);
                i++;



            }
            con.Close();



        }

        public void datacount()
        {
            String connectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";


          

            String query = "select count(*) from Bookhistory where email= '" + em + "' ";

            con.Close();

            using (SqlConnection connection = new SqlConnection(connectionString))
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