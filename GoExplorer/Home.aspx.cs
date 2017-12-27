using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoExplorer
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnMakeDay_Click(object sender, EventArgs e)
        {
            Session["hdnLat"] = hdnLat.Value;
            Session["hdnLog"] = hdnLog.Value;
            Session["hdnDate"] = selectDate.Value;
            Session["LocationName"] = hdnLocationName.Value;
            Response.Redirect("Category.aspx");
        }
    }
}