using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tests_jquery_logintestjquery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        
        int value = checkOk(txtUsername.Text, txtPassword.Text);

        if (value == 1)
        {
            lblLoggingStatus.Text = "ok";

            Session["username_mob"] = value;

            Response.Redirect("../Home.aspx");
        }
        else
        {
            lblLoggingStatus.Text = "Wrong username or password";
            Session["username_mob"] = null;
        }

    }
    private int checkOk(string userName, string password)
    {
        SqlConnection sc = new SqlConnection(); // el twsela bt3ty b database (path)
        SqlCommand command = new SqlCommand(); //el2wamer ele h3mlha


        //required
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString(); // 2detha el path
        command.Connection = sc;   //el2wamer htsht8l 3la database ele mwsofa f con

        command.CommandType = System.Data.CommandType.Text;
        command.CommandText = "select Id from Seller where username = '" + userName + "' and [Password] = '" + password + "'";


        command.Connection.Open();

        SqlDataReader drResult = command.ExecuteReader();
        
        if (drResult.HasRows)
        {
            while (drResult.Read())
            {
                string idResult = drResult.GetValue(0).ToString();
                Session["sellerID"] = idResult;
            }
            
           // Session["sellerID"] = drResult.GetValue(0).ToString();
            return 1;
           
        }
        else { 
            return 0;
            
             }
        
    }
}