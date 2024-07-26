using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Reflection.Emit;

namespace Movie
{
    public partial class Seat_selection : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        static int[] bookedseat;
        static int[] tempbookseat;
        int seatprice = 180;
        int total;

        int len;
        int i = 0;
        byte[] bytes1;
        String pid;
        public string[] mid { get; set; }
        public string[] mname { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.QueryString["id"] == null)
            {
                Response.Redirect("MoviePage.aspx");
            }
            else
            {
                pid = Request.QueryString["id"];
            //    Button1.Text = pid;
            //
            }



            con.ConnectionString = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            con.Open();
            con.Close();
            retdata();



            

            if (!IsPostBack)
            {
                bookedseat = new int[25];
                tempbookseat = new int[25];
                tempbookseat[0] = 0;
                tempbookseat[1] = 0;
                tempbookseat[2] = 0;
                tempbookseat[3] = 0;
                tempbookseat[4] = 0;
                tempbookseat[5] = 0;
                tempbookseat[6] = 0;
                tempbookseat[7] = 0;
                tempbookseat[8] = 0;
                tempbookseat[9] = 0;
                tempbookseat[10] = 0;
                tempbookseat[11] = 0;
                tempbookseat[12] = 0;
                tempbookseat[13] = 0;
                tempbookseat[14] = 0;
                tempbookseat[15] = 0;
                tempbookseat[16] = 0;
                tempbookseat[17] = 0;
                tempbookseat[18] = 0;
                tempbookseat[19] = 0;
                tempbookseat[20] = 0;
                tempbookseat[21] = 0;
                tempbookseat[22] = 0;
                tempbookseat[23] = 0;
                tempbookseat[24] = 0;

                alreadybooked();
            }

            

        }
       

        private void alreadybooked()
        {
            String mycon = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
            String myquery = "Select * from Seatbooking";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int rows = ds.Tables[0].Rows.Count;
            int i = 0;
            while (i < rows)
            {
                String status;
                status = ds.Tables[0].Rows[i]["status"].ToString();
                if (status == "B")
                {
                    bookedseat[i] = 1;
                    if (i == 0)
                    {
                        Button1.BackColor = System.Drawing.Color.Red;
                        Button1.Enabled = false;
                    }
                    if (i == 1)
                    {
                        Button2.BackColor = System.Drawing.Color.Red;
                        Button2.Enabled = false;
                    }
                    if (i == 2)
                    {
                        Button3.BackColor = System.Drawing.Color.Red;
                        Button3.Enabled = false;
                    }
                    if (i == 3)
                    {
                        Button4.BackColor = System.Drawing.Color.Red;
                        Button4.Enabled = false;
                    }
                    if (i == 4)
                    {
                        Button5.BackColor = System.Drawing.Color.Red;
                        Button5.Enabled = false;
                    }
                    if (i == 5)
                    {
                        Button6.BackColor = System.Drawing.Color.Red;
                        Button6.Enabled = false;
                    }
                    if (i == 6)
                    {
                        Button7.BackColor = System.Drawing.Color.Red;
                        Button7.Enabled = false;
                    }
                    if (i == 7)
                    {
                        Button8.BackColor = System.Drawing.Color.Red;
                        Button8.Enabled = false;
                    }
                    if (i == 8)
                    {
                        Button9.BackColor = System.Drawing.Color.Red;
                        Button9.Enabled = false;
                    }
                    if (i == 9)
                    {
                        Button10.BackColor = System.Drawing.Color.Red;
                        Button10.Enabled = false;
                    }
                    if (i == 10)
                    {
                        Button11.BackColor = System.Drawing.Color.Red;
                        Button11.Enabled = false;
                    }
                    if (i == 11)
                    {
                        Button12.BackColor = System.Drawing.Color.Red;
                        Button12.Enabled = false;
                    }
                    if (i == 12)
                    {
                        Button13.BackColor = System.Drawing.Color.Red;
                        Button13.Enabled = false;
                    }
                    if (i == 13)
                    {
                        Button14.BackColor = System.Drawing.Color.Red;
                        Button14.Enabled = false;

                    }
                    if (i == 14)
                    {
                        Button15.BackColor = System.Drawing.Color.Red;
                        Button15.Enabled = false;

                    }
                    if (i == 15)
                    {

                        Button16.BackColor = System.Drawing.Color.Red;
                        Button16.Enabled = false;
                    }
                    if (i == 16)
                    {

                        Button17.BackColor = System.Drawing.Color.Red;
                        Button17.Enabled = false;
                    }
                    if (i == 17)
                    {

                        Button18.BackColor = System.Drawing.Color.Red;
                        Button18.Enabled = false;
                    }
                    if (i == 18)
                    {

                        Button19.BackColor = System.Drawing.Color.Red;
                        Button19.Enabled = false;
                    }
                    if (i == 19)
                    {

                        Button20.BackColor = System.Drawing.Color.Red;
                        Button20.Enabled = false;
                    }
                    if (i == 20)
                    {

                        Button21.BackColor = System.Drawing.Color.Red;
                        Button21.Enabled = false;
                    }
                    if (i == 21)
                    {

                        Button22.BackColor = System.Drawing.Color.Red;
                        Button22.Enabled = false;
                    }
                    if (i == 22)
                    {

                        Button23.BackColor = System.Drawing.Color.Red;
                        Button23.Enabled = false;
                    }
                    if (i == 23)
                    {

                        Button24.BackColor = System.Drawing.Color.Red;
                        Button24.Enabled = false;
                    }
                    if (i == 24)
                    {

                        Button25.BackColor = System.Drawing.Color.Red;
                        Button25.Enabled = false;
                    }
                    
                    
                }
                if (status == "A")
                {
                    bookedseat[i] = 0;
                    if (i == 0)
                    {
                        Button1.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 1)
                    {
                        Button2.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 2)
                    {
                        Button3.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 3)
                    {
                        Button4.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 4)
                    {
                        Button5.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 5)
                    {
                        Button6.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 6)
                    {
                        Button7.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 7)
                    {
                        Button8.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 8)
                    {
                        Button9.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 9)
                    {
                        Button10.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 10)
                    {
                        Button11.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 11)
                    {
                        Button12.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 12)
                    {
                        Button13.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 13)
                    {
                        Button14.BackColor = System.Drawing.Color.Gray;

                    }
                    if (i == 14)
                    {
                        Button15.BackColor = System.Drawing.Color.Gray;

                    }
                    if (i == 15)
                    {

                        Button16.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 16)
                    {

                        Button17.BackColor = System.Drawing.Color.Gray;
                        
                    }
                    if (i == 17)
                    {

                        Button18.BackColor = System.Drawing.Color.Gray;
                    }
                    if (i == 18)
                    {

                        Button19.BackColor = System.Drawing.Color.Gray;
                        
                    }
                    if (i == 19)
                    {

                        Button20.BackColor = System.Drawing.Color.Gray;
                        
                    }
                    if (i == 20)
                    {

                        Button21.BackColor = System.Drawing.Color.Gray;
                        
                    }
                    if (i == 21)
                    {

                        Button22.BackColor = System.Drawing.Color.Gray;
                        
                    }
                    if (i == 22)
                    {

                        Button23.BackColor = System.Drawing.Color.Gray;
                        
                    }
                    if (i == 23)
                    {

                        Button24.BackColor = System.Drawing.Color.Gray;
                        
                    }
                    if (i == 24)
                    {

                        Button25.BackColor = System.Drawing.Color.Gray;
                        
                    }

                }
                i++;
            }
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

                bytes1 = (byte[])reader["image"];
                string url = "data:image/jpg;base64," + Convert.ToBase64String(bytes1);
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

        protected void btn_pay(object sender, EventArgs e)
        {

            int i = 0;
            for (i = 0; i < 25; i++)
            {

                if (tempbookseat[i] == 1)
                {
                    String mycon = "Data source=Asus-Tuf-Gaming\\SQLEXPRESS; initial catalog=Movie;integrated Security=true";
                    String updatedata = "Update Seatbooking set status='B' where seatno=" + (i + 1);
                    SqlConnection con = new SqlConnection(mycon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = updatedata;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

            }

            string showtime = DropDownList1.SelectedItem.Text;
            string showdate = bookArrival.Text; 

            Session["time"] = showtime;
            Session["date"] = showdate;
            Session["id"] = pid;
            Session["tempbooking"] = tempbookseat;





            Response.Redirect("Pyment_Page.aspx");

        }
        protected void btn_back(object sender, EventArgs e)
        {

            Response.Redirect("MoviePage.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (tempbookseat[0] == 0)
            {
                Button1.BackColor = System.Drawing.Color.Green;
                tempbookseat[0] = 1;

            }
            else
            {
                Button1.BackColor = System.Drawing.Color.Gray;
                tempbookseat[0] = 0;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (tempbookseat[1] == 0)
            {
                Button2.BackColor = System.Drawing.Color.Green;
                tempbookseat[1] = 1;

            }
            else
            {
                Button2.BackColor = System.Drawing.Color.Gray;
                tempbookseat[1] = 0;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            if (tempbookseat[2] == 0)
            {
                Button3.BackColor = System.Drawing.Color.Green;
                tempbookseat[2] = 1;

            }
            else
            {
                Button3.BackColor = System.Drawing.Color.Gray;
                tempbookseat[2] = 0;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            if (tempbookseat[3] == 0)
            {
                Button4.BackColor = System.Drawing.Color.Green;
                tempbookseat[3] = 1;

            }
            else
            {
                Button4.BackColor = System.Drawing.Color.Gray;
                tempbookseat[3] = 0;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

            if (tempbookseat[4] == 0)
            {
                Button5.BackColor = System.Drawing.Color.Green;
                tempbookseat[4] = 1;

            }
            else
            {
                Button5.BackColor = System.Drawing.Color.Gray;
                tempbookseat[4] = 0;
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {

            if (tempbookseat[5] == 0)
            {
                Button6.BackColor = System.Drawing.Color.Green;
                tempbookseat[5] = 1;

            }
            else
            {
                Button6.BackColor = System.Drawing.Color.Gray;
                tempbookseat[5] = 0;
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {

            if (tempbookseat[6] == 0)
            {
                Button7.BackColor = System.Drawing.Color.Green;
                tempbookseat[6] = 1;

            }
            else
            {
                Button7.BackColor = System.Drawing.Color.Gray;
                tempbookseat[6] = 0;
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {

            if (tempbookseat[7] == 0)
            {
                Button8.BackColor = System.Drawing.Color.Green;
                tempbookseat[7] = 1;

            }
            else
            {
                Button8.BackColor = System.Drawing.Color.Gray;
                tempbookseat[7] = 0;
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {

            if (tempbookseat[8] == 0)
            {
                Button9.BackColor = System.Drawing.Color.Green;
                tempbookseat[8] = 1;

            }
            else
            {
                Button9.BackColor = System.Drawing.Color.Gray;
                tempbookseat[8] = 0;
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {

            if (tempbookseat[9] == 0)
            {
                Button10.BackColor = System.Drawing.Color.Green;
                tempbookseat[9] = 1;

            }
            else
            {
                Button10.BackColor = System.Drawing.Color.Gray;
                tempbookseat[9] = 0;
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {

            if (tempbookseat[10] == 0)
            {
                Button11.BackColor = System.Drawing.Color.Green;
                tempbookseat[10] = 1;

            }
            else
            {
                Button11.BackColor = System.Drawing.Color.Gray;
                tempbookseat[10] = 0;
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {

            if (tempbookseat[11] == 0)
            {
                Button12.BackColor = System.Drawing.Color.Green;
                tempbookseat[11] = 1;

            }
            else
            {
                Button12.BackColor = System.Drawing.Color.Gray;
                tempbookseat[11] = 0;
            }
        }

        protected void Button13_Click(object sender, EventArgs e)
        {

            if (tempbookseat[12] == 0)
            {
                Button13.BackColor = System.Drawing.Color.Green;
                tempbookseat[12] = 1;

            }
            else
            {
                Button13.BackColor = System.Drawing.Color.Gray;
                tempbookseat[12] = 0;
            }
        }

        protected void Button14_Click(object sender, EventArgs e)
        {

            if (tempbookseat[13] == 0)
            {
                Button14.BackColor = System.Drawing.Color.Green;
                tempbookseat[13] = 1;

            }
            else
            {
                Button14.BackColor = System.Drawing.Color.Gray;
                tempbookseat[13] = 0;
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {

            if (tempbookseat[14] == 0)
            {
                Button15.BackColor = System.Drawing.Color.Green;
                tempbookseat[14] = 1;

            }
            else
            {
                Button15.BackColor = System.Drawing.Color.Gray;
                tempbookseat[14] = 0;
            }
        }

        protected void Button16_Click(object sender, EventArgs e)
        {

            if (tempbookseat[15] == 0)
            {
                Button16.BackColor = System.Drawing.Color.Green;
                tempbookseat[15] = 1;

            }
            else
            {
                Button16.BackColor = System.Drawing.Color.Gray;
                tempbookseat[15] = 0;
            }
        }

        protected void Button17_Click(object sender, EventArgs e)
        {

            if (tempbookseat[16] == 0)
            {
                Button17.BackColor = System.Drawing.Color.Green;
                tempbookseat[16] = 1;

            }
            else
            {
                Button17.BackColor = System.Drawing.Color.Gray;
                tempbookseat[16] = 0;
            }
        }

        protected void Button18_Click(object sender, EventArgs e)
        {

            if (tempbookseat[17] == 0)
            {
                Button18.BackColor = System.Drawing.Color.Green;
                tempbookseat[17] = 1;

            }
            else
            {
                Button18.BackColor = System.Drawing.Color.Gray;
                tempbookseat[17] = 0;
            }
        }

        protected void Button19_Click(object sender, EventArgs e)
        {

            if (tempbookseat[18] == 0)
            {
                Button19.BackColor = System.Drawing.Color.Green;
                tempbookseat[18] = 1;

            }
            else
            {
                Button19.BackColor = System.Drawing.Color.Gray;
                tempbookseat[18] = 0;
            }
        }

        protected void Button20_Click(object sender, EventArgs e)
        {

            if (tempbookseat[19] == 0)
            {
                Button20.BackColor = System.Drawing.Color.Green;
                tempbookseat[19] = 1;

            }
            else
            {
                Button20.BackColor = System.Drawing.Color.Gray;
                tempbookseat[19] = 0;
            }
        }

        protected void Button21_Click(object sender, EventArgs e)
        {

            if (tempbookseat[20] == 0)
            {
                Button21.BackColor = System.Drawing.Color.Green;
                tempbookseat[20] = 1;

            }
            else
            {
                Button21.BackColor = System.Drawing.Color.Gray;
                tempbookseat[20] = 0;
            }
        }

        protected void Button22_Click(object sender, EventArgs e)
        {

            if (tempbookseat[21] == 0)
            {
                Button22.BackColor = System.Drawing.Color.Green;
                tempbookseat[21] = 1;

            }
            else
            {
                Button22.BackColor = System.Drawing.Color.Gray;
                tempbookseat[21] = 0;
            }
        }

        protected void Button23_Click(object sender, EventArgs e)
        {

            if (tempbookseat[22] == 0)
            {
                Button23.BackColor = System.Drawing.Color.Green;
                tempbookseat[22] = 1;

            }
            else
            {
                Button23.BackColor = System.Drawing.Color.Gray;
                tempbookseat[22] = 0;
            }
        }

        protected void Button24_Click(object sender, EventArgs e)
        {

            if (tempbookseat[23] == 0)
            {
                Button24.BackColor = System.Drawing.Color.Green;
                tempbookseat[23] = 1;

            }
            else
            {
                Button24.BackColor = System.Drawing.Color.Gray;
                tempbookseat[23] = 0;
            }
        }

        protected void Button25_Click(object sender, EventArgs e)
        {

            if (tempbookseat[24] == 0)
            {
                Button25.BackColor = System.Drawing.Color.Green;
                tempbookseat[24] = 1;

            }
            else
            {
                Button25.BackColor = System.Drawing.Color.Gray;
                tempbookseat[24] = 0;
            }
        }
    }
}


//USE[Movie]
//GO

//DELETE FROM Seatbooking;

//INSERT INTO Seatbooking values (1,'A'),(2, 'B'),(3, 'A'),(4, 'A'),(5, 'A'),(6, 'A'),(7, 'A'),(8, 'A'),(9, 'B'),
//(10, 'A'),(11, 'A'),(12, 'A'),(13, 'A'),(14, 'A'),(15, 'A'),(16, 'A'),(17, 'A'),(18, 'A'),(19, 'A'),(20, 'A'),(21, 'A'),(22, 'A'),(23, 'A'),(24, 'A'),(25, 'A');


