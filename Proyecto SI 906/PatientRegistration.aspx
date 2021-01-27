<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.Master" CodeBehind="PatientRegistration.aspx.cs" Inherits="SI_PROYECTOFINAL_SIM.PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="z-index: 102; left: 104px; font-family: 'Lucida Console'; position: absolute;
        top: 190px">
        <tr>
            <td style="width: 135px; color: #FFFFFF;">
                CURP:&nbsp;</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server" MaxLength="18"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #FFFFFF">ESTADO</span><span style="color: #ffffff; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList6" runat="server" Width="96px">
                <asp:ListItem>...select...</asp:ListItem>
                <asp:ListItem>Starting</asp:ListItem>
                <asp:ListItem>Mild</asp:ListItem>
                <asp:ListItem>Serious</asp:ListItem>
            </asp:DropDownList><asp:DropDownList ID="DropDownList7" runat="server" Width="96px">
                <asp:ListItem>...select...</asp:ListItem>
                <asp:ListItem>Starting</asp:ListItem>
                <asp:ListItem>Mild</asp:ListItem>
                <asp:ListItem>Serious</asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px; font-size: 11pt; color: #FFFFFF;">
                PRIMER APELLIDO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" Enabled="false"></asp:TextBox></td>
            <td style="width: 100px; color: #FFFFFF;">
                MUNICIPIO:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList5" runat="server" Width="96px">
                <asp:ListItem>...select...</asp:ListItem>
                <asp:ListItem>Starting</asp:ListItem>
                <asp:ListItem>Mild</asp:ListItem>
                <asp:ListItem>Serious</asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF;">
                SEGUNDO APELLIDO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox13" runat="server" Enabled="false"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #FFFFFF">LOCALIDAD</span><span style="color: #ffffff; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; height: 26px; color: #FFFFFF;">
                NOMBRE:</td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px; color: #FFFFFF;">
                TIPO DE BENEFICIARIO:</td>
            <td style="width: 100px; height: 26px"><asp:DropDownList ID="DropDownList4" runat="server" Width="96px">
                <asp:ListItem>...select...</asp:ListItem>
                <asp:ListItem>Starting</asp:ListItem>
                <asp:ListItem>Mild</asp:ListItem>
                <asp:ListItem>Serious</asp:ListItem>
            </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF;">
                FECHA DE NACIMIENTO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            <td style="width: 100px; color: #FFFFFF;">
                CLAVE DE DEPENCIA:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF; height: 64px;">
                ESTADO DE NACIMIENTO:</td>
            <td style="width: 100px; height: 64px;">
                <asp:DropDownList ID="DropDownList8" runat="server" Width="96px">
                <asp:ListItem>...select...</asp:ListItem>
                <asp:ListItem>Starting</asp:ListItem>
                <asp:ListItem>Mild</asp:ListItem>
                <asp:ListItem>Serious</asp:ListItem>
            </asp:DropDownList></td>
            <td style="width: 100px; height: 64px;">
                <span style="color: #FFFFFF">CLAVE DEL PROGRAMA:</span></td>
            <td style="width: 100px; height: 64px;">
                <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF;">
                SEXO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                &nbsp;</td>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF;">
                NACIONALIDAD DE ORIGEN:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 100px">
                &nbsp;</td>
            <td style="width: 100px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #FFFFFF">FOLIO</span><span style="color: #ffffff; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="Button3" runat="server" Text="Registrar" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" Text="Limpiar" /></td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Font-Names="Modern" Font-Size="24pt" ForeColor="White"
        Style="z-index: 100; left: 260px; position: absolute; top: 148px" Text="Registro de pacientes" Font-Bold="True"></asp:Label>
    </asp:Content>