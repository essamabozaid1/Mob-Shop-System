using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product_addProduct : System.Web.UI.Page
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
        cmd.CommandText = "product";
        cmd.Parameters.AddWithValue("@check", 'a');
        cmd.Parameters.AddWithValue("@serial", txtserial.Text);
        cmd.Parameters.AddWithValue("@catogry", DDCatogry.SelectedValue);
        cmd.Parameters.AddWithValue("@model", txtModel.Text);
        cmd.Parameters.AddWithValue("@price", txtPrice.Text);
        cmd.Parameters.AddWithValue("@quentity", txtQuentity.Text);
        // DB Work
        conn.Open();
        int row_affected = cmd.ExecuteNonQuery();
        msg.Text = "The product has been added";
        conn.Close();
    }
    protected void btnaddcatogry_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(); // el twsela bt3ty b database (path)
        SqlCommand cmd = new SqlCommand(); //el2wamer ele h3mlha


        //required
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString(); // 2detha el path
        cmd.Connection = conn;   //el2wamer htsht8l 3la database ele mwsofa f conn
        cmd.CommandType = CommandType.StoredProcedure; // no3 el2wamer kda b2olo proc
        cmd.CommandText = "ManageCatogry";
        cmd.Parameters.AddWithValue("@check", 'a');
        cmd.Parameters.AddWithValue("@catogry", txtNameCat.Text);
        cmd.Parameters.AddWithValue("@description", txtDescription.Text);
        // DB Work
        conn.Open();
        int row_affected = cmd.ExecuteNonQuery();
        msgCAt.Text = "The Catogry has been added";
        conn.Close();
        if (row_affected > 0)
        {
            Response.Redirect("addProduct.aspx");
        }
    }
}