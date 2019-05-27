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
    public partial class eventLocation : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=EFM2018_DWCS_V11;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            refraishGV();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                da = new SqlDataAdapter("update Louer set dateLocation ='" + txtDate.Text + "' " +
                    "where NumLocation = " + Request.Params["numL"].ToString(), cn);
                da.Fill(dt);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);
                refraishGV();
            }
            catch(Exception ex) { Response.Write("<script language='javascript'>alert('" + ex.Message + "');</script>"); }
        }

        protected void refraishGV()
        {
            da = new SqlDataAdapter("select l.NumLocation,l.dateLocation,e.* from Evenement e,Louer l where l.NumEvenement=e.NumEvenement and l.NumLocation=" + Request.Params["numL"].ToString(), cn);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}