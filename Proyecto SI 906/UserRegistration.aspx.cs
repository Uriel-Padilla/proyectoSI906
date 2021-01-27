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
    public partial class UserRegistration : System.Web.UI.Page
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
                string insertuser = "Insert into USERS (USERNAME, USERPASSWORD, USERROL,USERPHONE,USERADRESS, USEREMAIL) values (@uname,@upass,@urol,@uphone,@uadress,@uemail)";

                cmd = new SqlCommand(insertuser, conn);
                cmd.Parameters.AddWithValue("@uname", nametxt.Text);
                cmd.Parameters.AddWithValue("@uemail", emtxt.Text);
                cmd.Parameters.AddWithValue("@urol", depddl.SelectedIndex);
                cmd.Parameters.AddWithValue("@uphone", phtxt.Text);
                cmd.Parameters.AddWithValue("@upass", pwdtxt.Text);
                cmd.Parameters.AddWithValue("@upassConf", conpwdtxt.Text);
                cmd.Parameters.AddWithValue("@uadress", addtxt.Text);
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

        protected void Resbtn_Click(object sender, EventArgs e)
        {
            ClearControl(this);
        }

        protected void canbtn_Click(object sender, EventArgs e)
        {
            Response.Write("Cancel");
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
            nametxt.Focus();
        }
    }
}