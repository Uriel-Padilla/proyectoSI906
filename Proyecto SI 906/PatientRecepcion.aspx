<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="PatientRecepcion.aspx.cs" Inherits="Proyecto_SI_906.PatientRecepcion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Arial Black" Font-Size="24pt"
        ForeColor="Black" Style="color: black;"
        Text="Citas" CssClass="auto-style4"></asp:Label>
<table style="color: black; font-family: 'Lucida Console';" class="auto-style5">
<tr>
    <td style="width: 721px; height: 20px">
        CURP:</td>
    <td style="width: 94px; height: 20px">
        <asp:TextBox ID="txtCurp" runat="server" MaxLength="18"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" Width="83px" />
        </td>
</tr>
<tr>
    <td style="width: 721px; height: 19px">
        NOMBRE:</td>
    <td style="width: 94px; height: 19px">
    <asp:TextBox ID="txtNombre" runat="server" ReadOnly="True"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width: 721px; height: 20px">
        EDAD:</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td style="width: 721px; height: 20px">
        DEPARTAMENTO:</td>
    <td style="width: 94px; height: 20px">
    <asp:TextBox ID="txtDepartamento" runat="server"></asp:TextBox>
    </td>
</tr>
<tr>
    <td class="auto-style1">
        MÉDICO:
    </td>
    <td class="auto-style2">
        <asp:DropDownList ID="ddMedico" runat="server" DataSourceID="SqlDataSource2" DataTextField="USERNAME" DataValueField="USERNAME" Width="139px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT [USERNAME] FROM [USERS]"></asp:SqlDataSource>
    </td>
</tr>
<tr>
    <td style="width: 721px; height: 20px">
        FECHA:</td>
    <td style="width: 94px; height: 20px">
        <asp:TextBox ID="txtFecha" runat="server" TextMode="DateTimeLocal" style="height: 22px"></asp:TextBox>
    </td>
</tr>
</table>
<table class="auto-style6">
        <tr>
        <td style="width: 83px; height: 26px">
          <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Width="86px" OnClick="btnGuardar_Click"   />
        </td>
       <td style="width: 67px; height: 26px">
             <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="92px"  />
       </td>
       </tr>
       </table>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/cita.png" CssClass="auto-style3" />
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 721px;
            height: 20px;
        }
        .auto-style2 {
            width: 94px;
            height: 20px;
        }
        .auto-style3 {
            z-index: 101;
            left: 136px;
            position: absolute;
            top: 191px;
            width: 271px;
            height: 300px;
        }
        .auto-style4 {
            z-index: 100;
            left: 628px;
            position: absolute;
            top: 167px;
        }
        .auto-style5 {
            width: 320px;
            z-index: 101;
            left: 505px;
            position: absolute;
            top: 258px;
        }
        .auto-style6 {
            z-index: 102;
            left: 569px;
            position: absolute;
            top: 458px;
        }
    </style>
</asp:Content>
