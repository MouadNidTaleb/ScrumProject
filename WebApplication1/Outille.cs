using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    class Outille
    {
        public SqlConnection cn = new SqlConnection(@"Data Source=DV6-PC\SQLEXPRESS;initial Catalog=Base;integrated Security=true");
        public SqlCommand cmd = new SqlCommand();
        public SqlDataReader dr;
        public DataTable dt = new DataTable();

        public void SeConnecter()
        {
            if (cn.State != ConnectionState.Open || cn.State == ConnectionState.Broken)
            {
                cn.Open();
            }
        }

        public void SeDeConnecter()
        {
            if (cn.State == ConnectionState.Open)
            {
                cn.Close();
            }
        }
        public bool VerifierConnexion(string log ,string mdp)
        {
            SeConnecter();
            cmd = new SqlCommand("Select * from Authentification where Log_in='" + log + "' and mdp ='"+mdp+"'", cn);
            dr=cmd.ExecuteReader();
            dt.Load(dr);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool VerifierInscription(string log)
        {
            SeConnecter();
            cmd = new SqlCommand("Select * from Authentification where Log_in='" + log + "'", cn);
            dr = cmd.ExecuteReader();
            dt.Load(dr);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
