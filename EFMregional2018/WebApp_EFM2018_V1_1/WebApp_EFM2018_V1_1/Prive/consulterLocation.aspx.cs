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
    public partial class consulterLocation : System.Web.UI.Page
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

        protected void btnSupprimer_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex <= -1 || GridView1.SelectedIndex > GridView1.Rows.Count)
                Response.Write("<script language='javascript'>alert('vous devez selectioner la ligne dabord');</script>");
            else
            {
                da = new SqlDataAdapter("select * from Louer where NumLocation=" + GridView1.SelectedDataKey.Value.ToString(), cn);
                dt = new DataTable();
                da.Fill(dt);
                dt.Rows[0].Delete();
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);
                GridView1.DataBind();
            }

        }

        protected void btnRapporter_Click(object sender, EventArgs e)
        {
            if(GridView1.SelectedIndex <= -1 || GridView1.SelectedIndex > GridView1.Rows.Count)
                Response.Write("<script language='javascript'>alert('vous devez selectioner la ligne dabord');</script>");
            else
            Response.Redirect("~/Prive/eventLocation.aspx?numL="+GridView1.SelectedDataKey.Value.ToString());
        }
        
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
        }
    }
}