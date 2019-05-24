using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebApp
{
    /// <summary>
    /// Description résumée de WebServiceListeAccidents
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceListeAccidents : System.Web.Services.WebService
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4V2_STE_TRANS_CASA;Integrated Security=True");
        
        [WebMethod]
        public DataTable ListeAccidentesDunConduct(int idCond)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter("SELECT A.* FROM Accidents A, Conducteurs C, Voitures V " +
                "WHERE A.numImmat = V.numImmat AND C.idCond = V.idConducteur " +
                "AND C.idCond = " + idCond, cn);
            da.Fill(dt);
            return dt;
        }
    }
}
