using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassSQL;

namespace WebPruebaAccesoSQL
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ClassAccesoSQL db2 = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cn = System.Configuration.ConfigurationManager.ConnectionStrings["BDTIENDA"].ConnectionString;
            if (IsPostBack == false)
            {
                db2 = new ClassAccesoSQL(cn);
                Session["db2"] = db2;
                empleados();
            }
            else
            {
                db2 = (ClassAccesoSQL)Session["db2"];
            }
        }

        private void empleados()
        {
            SqlConnection sql = null;
            SqlDataReader atrapa = null;

            string q = "select * from EMPLEADO";
            string g = "";
            sql = db2.AbrirConexion(ref g);
            atrapa = db2.ConsultarReader(q, sql, ref g);

            if (atrapa!=null)
            {
                while (atrapa.Read())
                {
                    DropDownList1.Items.Add(new ListItem(atrapa[1].ToString(), atrapa[0].ToString()));
                }
                sql.Close();
                sql.Dispose();
            }
            else
            {
                TextBox3.Text = "Error";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime fecha = DateTime.Now;
            
            SqlParameter[] sqlParameters = new SqlParameter[3];

            sqlParameters[0] = new SqlParameter
            {
                ParameterName = "id",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Input,
                Value = TextBox1.Text
            };

            sqlParameters[1] = new SqlParameter
            {
                ParameterName = "femp",
                SqlDbType = System.Data.SqlDbType.Int,
                Direction = System.Data.ParameterDirection.Input,
                Value = DropDownList1.SelectedValue
            };

            sqlParameters[2] = new SqlParameter
            {
                ParameterName = "fechaHora",
                SqlDbType = System.Data.SqlDbType.DateTime,
                Direction = System.Data.ParameterDirection.Input,
                Value = DateTime.Now
            };

            string q = "insert into TICKET values(@id, @femp, @fechaHora)";
            string m = "";
            db2.ModificiaParametrosUnPocoMasSegura(q, db2.AbrirConexion(ref m), ref m, sqlParameters);
            TextBox3.Text = m;
  

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {}

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataSet caja = null;
            string consulta = "select ID_NUMERO as ticket, NOMBRE as empleado, FECHACOMPRA from TICKET, EMPLEADO WHERE FKEMPLEADO = ID_EMPLEADO";
            string m = "";

            caja = db2.ConsultaDS(consulta, db2.AbrirConexion(ref m), ref m);
            if (caja != null)
            {
                GridView1.DataSource = caja.Tables[0];
                GridView1.DataBind();
            }
            else
            {
                TextBox3.Text = m;
            }
        }
    }
}