using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_SI_906
{
    
    public partial class PatientEliminacion : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

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
        protected void subbtn_Click1(object sender, EventArgs e)
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
                string insertuser = "DELETE FROM Pacientes WHERE CURP=@pcurp";

                cmd = new SqlCommand(insertuser, conn);
                cmd.Parameters.AddWithValue("@pcurp", txtCurp.Text);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("Menu.aspx");
            }
            catch (Exception exe)
            {
                Response.Write("Error" + exe.ToString());
            }
        
    }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            ClearControl(this);
        }

        protected void Button3_Click(object sender, EventArgs e)
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
                    txtPrimerApellido.Text = dr["PRIMER_APELLIDO"].ToString();
                    txtSegundoApellido.Text = dr["SEGUNDO_APELLIDO"].ToString();
                    txtNombre.Text = dr["NOMBRE"].ToString();
                    txtFechaNac.Text = dr["FECNAC"].ToString();
                    ddEstadoNacimiento.Text = dr["EDONAC"].ToString();
                    ddSexo.Text = dr["SEXO"].ToString();
                    ddNacionalidadOrigen.Text = dr["NACORIGEN"].ToString();
                    txtFolio.Text = dr["FOLIO"].ToString();
                    ddEstado.Text = dr["EDO"].ToString();
                    ddMunicipio.Text = dr["MUN"].ToString();
                    ddLocalidad.Text = dr["LOC"].ToString();
                    ddTipoBeneficiario.Text = dr["TIPO_BENEFICIARIO"].ToString();
                    txtClaveDependencia.Text = dr["CLAVE_DEPEDENCIA"].ToString();
                    txtClavePrograma.Text = dr["CLAVE_PROGRAMA"].ToString();
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
    
    }
}