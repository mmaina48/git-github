﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace Kirigiti
{
    public partial class Sign : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["DryCleanInventory"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Users where Username='" + Username.Text + "' and Password='" + Password.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count != 0)
                {
                    string Utype;
                    Utype = dt.Rows[0][5].ToString().Trim();

                    if (Utype == "U")
                    {

                        Session["USERNAME"] = Username.Text;
                        Response.Redirect("~/UserHome.aspx");
                    }
                    if (Utype == "A")
                    {

                        Session["USERNAME"] = Username.Text;
                        Response.Redirect("~/AdminHome.aspx");

                    }
                    else
                    {
                        lblError.Text = "Invalid Username or Password !";

                    }

                }

            }
        }

    }

}