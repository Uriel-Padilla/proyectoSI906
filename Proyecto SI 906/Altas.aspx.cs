using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Proyecto_SI_906
{
    public partial class Altas : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click1(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["SI906"].ConnectionString;
                conn = new SqlConnection(connectionString);
                try
                {
                    conn.Close();
                    conn.Open();
                }
                catch (Exception exe)
                {
                    Response.Write("Hubo un error al conectarse a la base de datos, intente mas tarde");
                    Response.Write(exe.ToString());
                }
                string insertuser = "Insert into Altas (CURP, FECHA_LLEGADA, FECHA_SALIDA) values (@aCurp,@aFLlegada,@aFSalida)";

                cmd = new SqlCommand(insertuser, conn);
                cmd.Parameters.AddWithValue("@aCurp", txtCurp.Text);
                cmd.Parameters.AddWithValue("@aFLlegada", Convert.ToDateTime(txtFechaLLegada.Text));
                cmd.Parameters.AddWithValue("@aFSalida", Convert.ToDateTime(txtFechaSalida.Text));
                cmd.ExecuteNonQuery();

                Response.Write("El registro fue agregado exitosamente.");
                Response.Redirect("Altas.aspx");
                conn.Close();
            }
            catch (Exception exe)
            {
                Response.Write("Error" + exe.ToString());
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString = ConfigurationManager.ConnectionStrings["SI906"].ConnectionString;
                conn = new SqlConnection(connectionString);
                try
                {
                    conn.Close();
                    conn.Open();
                }
                catch (Exception exe)
                {
                    Response.Write("Hubo un error al conectarse a la base de datos, intente mas tarde");
                    Response.Write(exe.ToString());
                }
                string insertuser = "SELECT * FROM Pacientes WHERE CURP=@pcurp";

                cmd = new SqlCommand(insertuser, conn);
                cmd.Parameters.AddWithValue("@pcurp", txtCurp.Text);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    txtPaciente.Text = dr["NOMBRE"].ToString();


                }
                else
                {
                    Response.Write("Usuario no encontrado ");
                }
                dr.Close();
                conn.Close();
            }
            catch (Exception exe)
            {
                Response.Write("Error" + exe.ToString());
            }
        }
        private void ClearControl(Control control)
        {
            var textbox = control as TextBox;
            if (textbox != null)
                textbox.Text = string.Empty;
            var dropDownList = control as DropDownList;
            if (dropDownList != null)
                dropDownList.SelectedIndex = 0;
            foreach (Control childControl in control.Controls)
            {
                ClearControl(childControl);
            }
            txtCurp.Focus();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            ClearControl(this);
        }
    }
}