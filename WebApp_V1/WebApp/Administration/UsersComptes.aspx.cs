using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppCCN4V2.Administration
{
    public partial class UsersComptes : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=CCN4_DWCS_V1_ETABLISEMENT;Integrated Security=True");
        SqlDataAdapter da;
        DataTable dt;
        string login;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                DataRow dr = (DataRow)Session["user"];
                if(dr[5].ToString() == "admin")
                {
                    login = (string)Session["login"];
                }
                else
                {
                    Response.Write("<script language='javascript'> alert('vous etes pas un admine!');</script>");
                    Response.Redirect("~/Students/ListeDocs.aspx");
                }
            }
            else Response.Redirect("login.aspx");
        }

        protected void btnAct_Click(object sender, EventArgs e)
        {
            changeState1("activee");
        }

        protected void changeState(string state)
        {
            foreach (GridViewRow r in GridView1.Rows)
            {
                if ((r.FindControl("chkAct") as CheckBox).Checked == true)
                {
                    da = new SqlDataAdapter("SELECT * FROM Utilisateurs where login ='" + r.Cells[6].Text + "'", cn);
                    dt = new DataTable();
                    da.Fill(dt);
                    dt.Rows[0][6] = state;
                    SqlCommandBuilder cb = new SqlCommandBuilder(da);
                    da.Update(dt);
                    GridView1.DataBind();
                    //Response.Write("<script language='javascript'> alert('"+r.Cells[6].Text+" selected');</script>");
                }
            }
        }

        protected void changeState1(string state)
        {
            string req = "SELECT * FROM Utilisateurs where login in(";
            foreach (GridViewRow r in GridView1.Rows)
            {
                if ((r.FindControl("chkAct") as CheckBox).Checked == true)
                {
                    req += "'" + r.Cells[6].Text + "' ,";
                }
            }
            da = new SqlDataAdapter(req.TrimEnd(',') + ")", cn);
            dt = new DataTable();
            da.Fill(dt);
            foreach(DataRow r in dt.Rows) { r[6] = state; }
            SqlCommandBuilder cb = new SqlCommandBuilder(da);
            da.Update(dt);
            GridView1.DataBind();
        }

        protected void btnDesact_Click(object sender, EventArgs e)
        {
            changeState("desactivee");
        }
    }
}