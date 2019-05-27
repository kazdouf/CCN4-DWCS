using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApp_EFM2018_V1_1
{
    /// <summary>
    /// Description résumée de WebServiceVerifCapacite
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceVerifCapacite : System.Web.Services.WebService
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=EFM2018_DWCS_V11;Integrated Security=True");
        SqlDataAdapter da;
        DataSet ds;
        [WebMethod]
        public bool Capacite(int idSalle, int idEvent)
        {
            bool tr = false;
            ds = new DataSet();

            da = new SqlDataAdapter("select * from Evenement where NumEvenement="+idEvent, cn);
            da.Fill(ds, "event");
            da = new SqlDataAdapter("select * from SalleFete where CodeSalle="+idSalle, cn);
            da.Fill(ds, "salle");

            if (Convert.ToInt32(ds.Tables["salle"].Rows[0][2]) > Convert.ToInt32(ds.Tables["event"].Rows[0][3]))
                tr = true;
            return tr;
        }
    }
}
