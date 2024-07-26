using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Movie
{
    public partial class Pyment_page : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string mname;
        string hid;
        String seatbooked = "";
        int i = 0;
        int count = 0;
        String cardnum;
       String showtime;
        String showdate;
        String  price;
    
        

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

            int[] seats = (int[])Session["tempbooking"];
            showtime = Session["time"].ToString();
            showdate = Session["date"].ToString();
            var id = Session["id"];
          






            for (i = 0; i < 25; i++)
            {
                if (seats[i] == 1)
                {
                    seatbooked = seatbooked + " " + (i + 1);
                    count = count + 1;
                }

            }
            price = (count * 250).ToString(); 
            String em = Session["Email"].ToString();
            cardnum = cardnumber.Text;


            con.Open();
            cmd = new SqlCommand("SELECT * FROM AdminMovies where id= '" + id + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                mname = reader.GetString(1);

            }
           
            //Label2.Text = "You Have Booked Seat " + seatbooked + "Price : "+count*250 +" Time : "+showtime + showdate + id+"     "+mname + em;


            reader.Close();
            con.Close();

            Session["mtime"] = showtime;
            Session["mdate"] = showdate;
            Session["mprice"] = price;
            Session["mseat"] = seatbooked;
            Session["mname"] = mname;








        }

        protected void btn_con(object sender, EventArgs e)
        {
            con.Open();

            String em = Session["email"].ToString();
            cmd = new SqlCommand("SELECT * FROM Signup where email= '" + em + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                hid = reader.GetInt32(0).ToString();


            }
            reader.Close();
            con.Close();





            con.Open();
            cmd = new SqlCommand("insert into Bookhistory" + "(email,moviesname,date,time,seatno,price,cardnumber)values(@email,@name,@dte,@time,@seat,@price,@number)", con);
            cmd.Parameters.AddWithValue("@email", em);
            cmd.Parameters.AddWithValue("@name", mname);
            cmd.Parameters.AddWithValue("@dte", showdate);
            cmd.Parameters.AddWithValue("@time", showtime);
            cmd.Parameters.AddWithValue("@seat", seatbooked);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@number", cardnumber.Text);
            cmd.ExecuteNonQuery();
            Session["log"] = "true";
            con.Close();






            Response.Redirect("E_ticket.aspx");

        }
        protected void btn_cancel(object sender, EventArgs e)
        {

            Response.Redirect("MoviePage.aspx");

        }
    }
}