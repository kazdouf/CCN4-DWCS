using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCCN4V2.Students
{
    public partial class webServiceDocsForTheme : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4_DWCS_V1_ETABLISEMENT;Integrated Security=True");
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

            }
            else Response.Redirect("login.aspx");
        }

        protected void btnAff_Click(object sender, EventArgs e)
        {
            WebServiceDocsForTheme ws = new WebServiceDocsForTheme();
            dt = ws.DocsForTheme(int.Parse(DDLThemes.SelectedValue.ToString()));
            GridViewDocs.DataSource = dt;
            GridViewDocs.DataBind();
        }
    }
}