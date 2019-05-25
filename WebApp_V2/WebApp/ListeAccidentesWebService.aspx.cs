using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp
{
    public partial class ListeAccidentesWebService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cond"] != null)
            {

            }
            else Response.Redirect("Login.aspx");
        }

        protected void btnAfficher_Click(object sender, EventArgs e)
        {
            WebServiceListeAccidents WBA = new WebServiceListeAccidents();
            DataTable dt = new DataTable();
            dt = WBA.ListeAccidentesDunConduct(int.Parse(txtIdConduct.Text));
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}