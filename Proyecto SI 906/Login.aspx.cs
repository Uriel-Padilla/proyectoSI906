using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace Proyecto_SI_906
{
    public partial class Login : System.Web.UI.Page
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
            lidtxt.Focus();
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
                try
                {
                    if (lidtxt.Text != "" && pwdtxt.Text != "")
                    {
                        string consulta = "Select * from USERS where USERNAME='" + lidtxt.Text + "'and USERPASSWORD='" + pwdtxt.Text + "' ";
                        SqlCommand sql = new SqlCommand(consulta, conn);
                        SqlDataReader dr = null;
                        if (sql.ExecuteScalar() != null)
                        {
                            dr = sql.ExecuteReader();
                            if (dr.Read())
                            {
                                Response.Write("Bienvenido: " + lidtxt.Text);
                                Response.Redirect("Test.aspx");
                                conn.Close();
                            }
                            else
                            {
                                Response.Write("Error inesperado, no se guardo el datareader, o no existe el usuario Vuelva intentarlo.");
                            }
                        }
                        else
                        {
                            Response.Write("Usuario o contraseña incorrecto");
                            ClearControl(this);
                        }
                    }
                    else
                    {
                        Response.Write("Por favor llene todos los campos");
                    }
                }
                catch (Exception mensaje)
                {
                    Response.Write(mensaje.ToString());
                }
            }
            catch (Exception exe)
            {
                Response.Write("Error" + exe.ToString());
            }
        }
    }
}