using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace WebAppCCN4V2
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4_DWCS_V1_ETABLISEMENT;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM Utilisateurs", cn);
            dt = new DataTable();
            da.Fill(dt);
        }

        protected void btnCnx_Click(object sender, EventArgs e)
        {
            if (checkLog() != null)
            {
                Session["user"] = checkLog();
                Session["login"] = checkLog()[0].ToString();
                FormsAuthentication.RedirectFromLoginPage(checkLog()[1].ToString(), false);
            }
            else lblmsg.Text = "Login ou mot de passe incorrecte";
        }

        protected DataRow checkLog()
        {
            DataRow dr = null;
            foreach(DataRow r in dt.Rows)
            {
                if(r[0].ToString() == txtLogin.Text && r[4].ToString() == txtPassword.Text)
                {
                    dr = r; break;
                }
            }
            return dr;
        }
    }
}