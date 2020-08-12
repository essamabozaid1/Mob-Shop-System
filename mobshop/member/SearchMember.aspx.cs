using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class member_update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        searchgrid.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblOk.BackColor = Color.White;
        lblOk.Text = "";

        string idS = txtdelete.Text;

        #region Student Insert

        SqlConnection sc = new SqlConnection();
        sc.ConnectionString = ConfigurationManager.ConnectionStrings[1].ToString();

        SqlCommand command = new SqlCommand();
        command.Connection = sc;
        command.CommandType = System.Data.CommandType.StoredProcedure;
        command.CommandText = "AddMember";
        command.Parameters.AddWithValue("@check", "d");
        command.Parameters.AddWithValue("@id ", idS);


        command.Connection.Open();

        int rows_affected = command.ExecuteNonQuery();

        if (rows_affected > 0)
        {
            lblOk.Text = "Done";
            lblOk.BackColor = Color.Green;
        }
        else
        {
            lblOk.Text = "Failed";
            lblOk.BackColor = Color.Red;
        }
        sc.Close();



        #endregion


        searchgrid.DataBind();  // y3rrd el data b3d ma 23ml 2e 3mlya 3la tol
    
    }
}