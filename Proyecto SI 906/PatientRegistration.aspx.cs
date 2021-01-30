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
    public partial class PatientRegistration : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void subbtn_Click(object sender, EventArgs e)
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
                string insertuser = "Insert into Pacientes (CURP, PRIMER_APELLIDO, SEGUNDO_APELLIDO,NOMBRE,FECNAC, EDONAC, SEXO, NACORIGEN, FOLIO, EDO, MUN, LOC, TIPO_BENEFICIARIO, CLAVE_DEPEDENCIA, CLAVE_PROGRAMA) values (@pcurp,@pPrimerApellido,@pSegundoApellido,@pnombre,@pfecnac,@pedonac,@psexo,@pnacorigen,@pfolio,@pedo,@pmun,@ploc,@pTipoBeneficiario,@pClaveDependencia,@pClavePrograma)";

                cmd = new SqlCommand(insertuser, conn);
                cmd.Parameters.AddWithValue("@pcurp", txtCurp.Text);
                cmd.Parameters.AddWithValue("@pPrimerApellido", txtPrimerApellido.Text);
                cmd.Parameters.AddWithValue("@pSegundoApellido", txtSegundoApellido.Text);
                cmd.Parameters.AddWithValue("@pnombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@pfecnac", txtFechaNac.Text);
                cmd.Parameters.AddWithValue("@pedonac", ddEstado.SelectedValue);
                cmd.Parameters.AddWithValue("@psexo", ddSexo.SelectedValue);
                cmd.Parameters.AddWithValue("@pnacorigen", ddNacionalidadOrigen.SelectedValue);
                cmd.Parameters.AddWithValue("@pfolio", txtFolio.Text);
                cmd.Parameters.AddWithValue("@pedo", ddEstado.SelectedValue);
                cmd.Parameters.AddWithValue("@pmun", ddMunicipio.SelectedValue);
                cmd.Parameters.AddWithValue("@ploc", ddLocalidad.SelectedValue);
                cmd.Parameters.AddWithValue("@pTipoBeneficiario", ddTipoBeneficiario.SelectedValue);
                cmd.Parameters.AddWithValue("@pClaveDependencia", txtClaveDependencia.Text);
                cmd.Parameters.AddWithValue("@pClavePrograma", txtClavePrograma.Text);
                cmd.ExecuteNonQuery();

                Response.Write("El usuario fue agregado exitosamente.");
                Response.Redirect("Login.aspx");
                conn.Close();
            }
            catch (Exception exe)
            {
                Response.Write("Error" + exe.ToString());
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClearControl(this);
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
    }
}