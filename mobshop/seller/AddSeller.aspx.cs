using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class seller_AddSeller : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(); // el twsela bt3ty b database (path)
        SqlCommand cmd = new SqlCommand(); //el2wamer ele h3mlha


        //required
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString(); // 2detha el path
        cmd.Connection = conn;   //el2wamer htsht8l 3la database ele mwsofa f conn
        cmd.CommandType = CommandType.StoredProcedure; // no3 el2wamer kda b2olo proc
        cmd.CommandText = "ManageSeller";
        cmd.Parameters.AddWithValue("@check", 'a');
        cmd.Parameters.AddWithValue("@firstname", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@lastname", txtlastname.Text);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@birthdate", txtbirthdate.Text);
        cmd.Parameters.AddWithValue("@position", DDPosition.SelectedValue);
        // DB Work
        conn.Open();
        cmd.ExecuteNonQuery();
        Msg.Text = "The Employee has been added";
        conn.Close();
    }
}