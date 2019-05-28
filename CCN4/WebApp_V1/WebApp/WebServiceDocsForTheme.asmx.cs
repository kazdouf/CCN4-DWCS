using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace WebAppCCN4V2
{
    /// <summary>
    /// Description résumée de WebServiceDocsForTheme
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Pour autoriser l'appel de ce service Web depuis un script à l'aide d'ASP.NET AJAX, supprimez les marques de commentaire de la ligne suivante. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceDocsForTheme : System.Web.Services.WebService
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4_DWCS_V1_ETABLISEMENT;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        [WebMethod]
        public DataTable DocsForTheme(int idTheme)
        {
            dt = new DataTable();
            da = new SqlDataAdapter("select * from Documents where codeTheme = " + idTheme, cn);
            da.Fill(dt);
            return dt;
        }
    }
}
