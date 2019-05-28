using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_EFM2018_V1_1.Prive
{
    public partial class ajouterLocation : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=EFM2018_DWCS_V11;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            da = new SqlDataAdapter("select * from Louer", cn);
            dt = new DataTable();
            da.Fill(dt);
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                DataRow dr = dt.NewRow();
                dr[0] = txtNum.Text;
                dr[1] = DDLSalle.SelectedValue;
                dr[2] = DDLEvent.SelectedValue;
                if (dateLocation.SelectedDate > DateTime.Today)
                    dr[3] = dateLocation.SelectedDate.ToShortDateString();
                else { Response.Write("<script language='javascript'>alert('la date doit etre superieure a la date d ojourdhui!');</script>"); return; }
                dr[4] = txtPrix.Text;
                dt.Rows.Add(dr);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);
                lblMsg.Text = "Location ajoutee avec succes";
            }catch(Exception ex) { Response.Write("<script language='javascript'>alert('" + ex.Message + "');</script>"); }
        }
    }
}