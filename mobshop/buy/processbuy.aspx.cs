using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class buy_processbuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DDmodel_SelectedIndexChanged(object sender, EventArgs e)
    {


        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string model = txtsearch.Text;
        SqlConnection conn = new SqlConnection(); // el twsela bt3ty b database (path)
        SqlCommand cmd = new SqlCommand(); //el2wamer ele h3mlha


        //required
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString(); // 2detha el path
        cmd.Connection = conn;   //el2wamer htsht8l 3la database ele mwsofa f conn
        cmd.CommandType = CommandType.StoredProcedure; // no3 el2wamer kda b2olo proc
        cmd.CommandText = "product";
        cmd.Parameters.AddWithValue("@check", 'p');
        cmd.Parameters.Add(new SqlParameter("@model ", model));

        // DB Work
        conn.Open();
        SqlDataReader drStudent = cmd.ExecuteReader();
        if (drStudent.HasRows == true)
        {
            while (drStudent.Read())
            {
                string serial = drStudent.GetValue(0).ToString();
                string catogry = drStudent.GetValue(1).ToString();
                string modell = drStudent.GetValue(2).ToString();
                string price = drStudent.GetValue(3).ToString();
                string Quantity = drStudent.GetValue(4).ToString();
                string myRow = " Serial= {0} , Catogry = {1} ,model={3}  , price = {2} ,Quantity={4}  \n";
                lblprice.Text += String.Format(myRow, serial, catogry, price,modell,Quantity);
                txtSerial.Text += serial;

            }
        }
        else
        {
            lblprice.Text = "No rows found !!!";
        }

        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        txtseller.Text=Session["sellerID"].ToString();


        string person = txtsearchClient.Text;
        SqlConnection conn = new SqlConnection(); // el twsela bt3ty b database (path)
        SqlCommand cmd = new SqlCommand(); //el2wamer ele h3mlha


        //required
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString(); // 2detha el path
        cmd.Connection = conn;   //el2wamer htsht8l 3la database ele mwsofa f conn
        cmd.CommandType = CommandType.StoredProcedure; // no3 el2wamer kda b2olo proc
        cmd.CommandText = "AddMember";
        cmd.Parameters.AddWithValue("@check", 'p');
        cmd.Parameters.Add(new SqlParameter("@phone", person));

        // DB Work
        conn.Open();
        SqlDataReader drMember = cmd.ExecuteReader();
        if (drMember.HasRows == true)
        {
            while (drMember.Read())
            {
                string ID = drMember.GetValue(0).ToString();
                string FirstName = drMember.GetValue(1).ToString();
                string Lastname = drMember.GetValue(2).ToString();
                string phone = drMember.GetValue(3).ToString();
                string myRow = " ID= {0} , Name: {1} {2} , phone:{3} \n";
                lblClient.Text += String.Format(myRow, ID, FirstName, Lastname, phone);
                txtclient.Text += ID;
            }

        }
        else
        {
            lblClient.Text = "No rows found !!!";
        }



        conn.Close();
    }

    protected void BUY_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(); // el twsela bt3ty b database (path)
        SqlCommand cmd = new SqlCommand(); //el2wamer ele h3mlha


        //required
        conn.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString(); // 2detha el path
        cmd.Connection = conn;   //el2wamer htsht8l 3la database ele mwsofa f conn
        cmd.CommandType = CommandType.StoredProcedure; // no3 el2wamer kda b2olo proc
        cmd.CommandText = "ManageBuy";

        
        cmd.Parameters.AddWithValue("@serial", txtSerial.Text);
        cmd.Parameters.AddWithValue("@idclient", txtclient.Text);
        cmd.Parameters.AddWithValue("@idseller", txtseller.Text);
        
        // DB Work
        conn.Open();
        int row_affected = cmd.ExecuteNonQuery();
        
        conn.Close();
        cmd.Parameters.Clear();
         
        cmd.CommandText = "product";
        
        cmd.Parameters.AddWithValue("@check", "q");
        cmd.Parameters.AddWithValue("@serial", txtSerial.Text);
        

        // DB Work
        conn.Open();
        int roweffect=cmd.ExecuteNonQuery();
        Msg.Text = roweffect.ToString();
        conn.Close();

    }
    
}



        
 
       
          
     