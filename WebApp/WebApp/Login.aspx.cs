using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebApp
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4V2_STE_TRANS_CASA;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from Conducteurs", cn);
            dt = new DataTable();
            da.Fill(dt);
        }

        public DataRow verifLog()
        {
            DataRow dr = null;
            foreach(DataRow d in dt.Rows)
            {
                if (d[0].ToString() == txtId.Text && d[4].ToString() == txtMotpass.Text)
                {
                    dr = d; break;
                }
            }
            return dr;
        }

        protected void btnLog_Click(object sender, EventArgs e)
        {
            if(verifLog() != null)
            {
                Session["cond"] = verifLog();
                //Response.Redirect("AjouterConducteur.aspx");
                FormsAuthentication.RedirectFromLoginPage(verifLog()[1].ToString(), false);
            }
            else
            {
                lblmsg.Text = "Error : id ou mot de passe incorrecte";
            }
        }
    }
}