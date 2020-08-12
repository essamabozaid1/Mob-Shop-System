using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username_mob"] == null)
            Response.Redirect("../login/loginmobile.aspx");
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["username_mob"] = null;
        Response.Redirect("../login/loginmobile.aspx");
    }
}
