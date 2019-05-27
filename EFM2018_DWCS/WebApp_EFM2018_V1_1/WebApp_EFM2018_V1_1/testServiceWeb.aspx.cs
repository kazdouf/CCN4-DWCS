using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_EFM2018_V1_1
{
    public partial class testServiceWeb : System.Web.UI.Page
    {
        ServiceReferenceCapacite.WebServiceVerifCapaciteSoapClient sw;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnVerif_Click(object sender, EventArgs e)
        {
            sw = new ServiceReferenceCapacite.WebServiceVerifCapaciteSoapClient();
            if (sw.Capacite(Convert.ToInt32(DDLSalle.SelectedValue), Convert.ToInt32(DDLEvent.SelectedValue)))
                lblRes.Text = "Salle Suffisante";
            else lblRes.Text = "Salle insuffisante";
        }
    }
}