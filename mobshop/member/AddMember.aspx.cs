using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddMember : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(); // el twsela bt3ty b database (path)
        SqlCommand cmd = new SqlCommand(); //el2wamer ele h3mlha


        //required
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString(); // 2detha el path
        cmd.Connection = conn;   //el2wamer htsht8l 3la database ele mwsofa f conn
        cmd.CommandType = CommandType.StoredProcedure; // no3 el2wamer kda b2olo proc
        cmd.CommandText = "AddMember";
        cmd.Parameters.AddWithValue("@check", 'a');
        cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@lastname", txtlastname.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@age",txtage.Text);

        // DB Work
        conn.Open();
        int row_affected = cmd.ExecuteNonQuery();
        Msg.Text = "The Customer has been added";
        conn.Close();

        if (row_affected > 0)
        {
            Response.Redirect("../buy/processbuy.aspx");
        }

    }
}