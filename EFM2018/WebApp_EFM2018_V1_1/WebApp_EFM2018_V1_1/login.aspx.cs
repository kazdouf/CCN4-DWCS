using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_EFM2018_V1_1
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=EFM2018_DWCS_V11;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from Client", cn);
            dt = new DataTable();
            da.Fill(dt);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsClient() != null)
            {
                Session["client"] = IsClient();
                FormsAuthentication.RedirectFromLoginPage(IsClient()[1].ToString(), false);
            }
            else lblMsg.Text = "CIN ou Mot de passe incorrect";
        }

        protected DataRow IsClient()
        {
            DataRow dr = null;
            foreach(DataRow r in dt.Rows)
            {
                if (r[0].ToString() == txtCIN.Text && r[2].ToString() == txtPass.Text)
                    dr = r;
            }
            return dr;
        }
    }
}