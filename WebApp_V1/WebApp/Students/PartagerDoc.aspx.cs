using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCCN4V2.Students
{
    public partial class PartagerDoc : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4_DWCS_V1_ETABLISEMENT;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        DataRow user;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                user = (DataRow)Session["user"];
                da = new SqlDataAdapter("SELECT * FROM Documents", cn);
                dt = new DataTable();
                da.Fill(dt);
            }
            else Response.Redirect("login.aspx");
        }

        protected void btnShare_Click(object sender, EventArgs e)
        {
            if (FileUploadDoc.HasFiles)
            {
                DataRow r = dt.NewRow();
                r[0] = txtId.Text;
                r[1] = txtDesc.Text;
                FileUploadDoc.SaveAs(Server.MapPath("~/Documents/")+ "\\" + FileUploadDoc.FileName);
                r[2] = "~/Documents/" + FileUploadDoc.FileName;
                r[3] = DateEnvoie.SelectedDate.ToShortDateString();
                r[4] = txtEtat.Text;
                r[5] = DDLTheme.SelectedValue;
                r[6] = user[0];
                dt.Rows.Add(r);
                SqlCommandBuilder cb = new SqlCommandBuilder(da);
                da.Update(dt);
            }else Response.Write("<script LANGUAGE='JavaScript' >alert('Selectionee un document')</script>");
        }
    }
}