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
    public partial class PatientRecepcion : System.Web.UI.Page
    {
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
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
                string insertuser = "Insert into Citas (Paciente, Departamento, idUser, Fecha) " +
                    "values (@cPaciente,@cDepartamento,@cIdUser,@cFecha)";
                Response.Write(txtFecha.Text);
                cmd = new SqlCommand(insertuser, conn);
                cmd.Parameters.AddWithValue("@cPaciente", txtNombre.Text);
                cmd.Parameters.AddWithValue("@cDepartamento", txtDepartamento.Text);
                cmd.Parameters.AddWithValue("@cIdUser", txtEdad.Text);
                cmd.Parameters.AddWithValue("@cFecha",Convert.ToDateTime(txtFecha.Text));
                cmd.ExecuteNonQuery();

                Response.Write("El registro fue agregado exitosamente.");
                Response.Redirect("Menu.aspx");
                conn.Close();
            }
            catch (Exception exe)
            {
                Response.Write("Error" + exe.ToString());
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
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
            txtNombre.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
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
                    
                    txtNombre.Text = dr["NOMBRE"].ToString();
                    

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