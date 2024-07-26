using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Movie
{
    public partial class E_ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



            var time = Session["mtime"];
            var date = Session["mdate"];
            var price = Session["mprice"];
            var seat = Session["mseat"];
            var name = Session["mname"];


            Label1.Text = name.ToString();
            Label2.Text = seat.ToString();
            Label3.Text = price.ToString();
            Label4.Text = date.ToString();
                Label5.Text = time.ToString();

        }

        protected void btn_home(object sender, EventArgs e)
        {

            Response.Redirect("MoviePage.aspx");

        }
    }
}