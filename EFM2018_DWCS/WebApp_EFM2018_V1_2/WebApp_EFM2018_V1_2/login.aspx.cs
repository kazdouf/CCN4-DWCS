using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_EFM2018_V1_2
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("SELECT * FROM ATHLETE", cn);
            dt = new DataTable();
            da.Fill(dt);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Athlete() != null)
            {
                Session["athlete"] = Athlete();
                FormsAuthentication.RedirectFromLoginPage(Athlete()[1].ToString(), false);
            }
            else lblmsg.Text = "Numero ou mot de passe incorrect";
        }

        protected DataRow Athlete()
        {
            DataRow dr = null;
            foreach (DataRow r in dt.Rows)
            {
                if (r[0].ToString() == txtNum.Text && r[2].ToString() == txtPasse.Text)
                { dr = r; break; }
            }
            return dr;
        }

    }
}