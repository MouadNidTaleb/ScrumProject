using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Connexion : System.Web.UI.Page
    {
        Outille o = new Outille();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_signup_Click(object sender, EventArgs e)
        {
            if (pass.Text == re_pass.Text)
            {
                if (o.VerifierInscription(login.Text.ToString()) == false)
                {
                    o.cmd = new SqlCommand("insert into Authentification values ('" + login.Text + "' , '" + name.Text + "' , '" + prénom.Text + "' , '" + email.Text + "', '" + pass.Text + "',0)", o.cn);
                    o.cmd.ExecuteNonQuery();
                    o.SeDeConnecter();
                    Response.Redirect("Connexion.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "bad()",true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "pass()", true);
            }
        }
    }
}