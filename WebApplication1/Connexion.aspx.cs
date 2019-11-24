using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Connexion1 : System.Web.UI.Page
    {
        Outille o = new Outille();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie c = Request.Cookies["cok"];
                if (c!=null)
                {

                    login.Text = c["Login"];
                    mdpstext.Text = c["Pass"];
                }
            }
        }
        protected void btn_SeConnecter_Click(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("cok");
            if (o.VerifierConnexion(login.Text.ToString(), mdpstext.Text.ToString()) == true)
            {
                o.SeDeConnecter();
                if (accept_arg.Checked==true)
                {
                    c["Login"] = login.Text;
                    c["Pass"] = mdpstext.Text;
                    c.Expires = DateTime.Now.AddMinutes(1);
                    Response.Cookies.Add(c);
                }
                else
                {
                    c.Expires = DateTime.Now.AddMinutes(-1);
                }
                Response.Redirect("Home.aspx");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "bad()", true);
            }
            
        }
    }
}