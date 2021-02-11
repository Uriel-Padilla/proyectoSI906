<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="PatientEliminacion.aspx.cs" Inherits="Proyecto_SI_906.PatientEliminacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="z-index: 102; left: 104px; font-family: 'Lucida Console'; position: absolute; top: 190px">
        <tr>
            <td style="color: #000000;" class="auto-style3">CURP:&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCurp" runat="server" MaxLength="18" Width="117px"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" Height="22px" Text="Buscar" Width="61px" OnClick="Button3_Click"/>
            </td>
            <td class="auto-style4">
                <span style="color: #000000">ESTADO</span><span style="color: #000000; font-family: Lucida Console">:</span></td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddEstado" runat="server" Width="96px" DataSourceID="SqlDataSourceSI906" DataTextField="ENTIDAD_FEDERATIVA" DataValueField="CATALOG_KEY" Enabled="False">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Starting</asp:ListItem>
                    <asp:ListItem>Mild</asp:ListItem>
                    <asp:ListItem>Serious</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px; font-size: 11pt; color: #000000;">PRIMER APELLIDO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtPrimerApellido" runat="server" Enabled="False"></asp:TextBox></td>
            <td style="width: 100px; color: #000000;">MUNICIPIO:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddMunicipio" runat="server" Width="96px" DataSourceID="SqlDataSourceMunicipios" DataTextField="MUNICIPIO" DataValueField="CATALOG_KEY" Enabled="False">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Starting</asp:ListItem>
                    <asp:ListItem>Mild</asp:ListItem>
                    <asp:ListItem>Serious</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceMunicipios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [MUNICIPIOS]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; color: #000000;">SEGUNDO APELLIDO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtSegundoApellido" runat="server" Enabled="False"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #000000">LOCALIDAD</span><span style="color: #000000; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddLocalidad" runat="server" Width="96px" DataSourceID="SqlDataSourceLocalidad" DataTextField="LOCALIDAD" DataValueField="CATALOG_KEY" Enabled="False">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceLocalidad" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [LOCALIDADES]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 26px; color: #000000;">NOMBRE:</td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="txtNombre" runat="server" Enabled="False"></asp:TextBox></td>
            <td style="width: 100px; height: 26px; color: #000000;">TIPO DE BENEFICIARIO:</td>
            <td style="width: 100px; height: 26px">
                <asp:DropDownList ID="ddTipoBeneficiario" runat="server" Enabled="False">
                    <asp:ListItem Value="01">Trabajador/Asegurado</asp:ListItem>
                    <asp:ListItem Value="02">Beneficiario del Seguro Popular</asp:ListItem>
                    <asp:ListItem Value="03">Familiar</asp:ListItem>
                    <asp:ListItem Value="04">Pensionado</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #000000;" class="auto-style1">FECHA DE NACIMIENTO:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtFechaNac" runat="server" Enabled="False"></asp:TextBox></td>
            <td style="color: #000000;" class="auto-style2">CLAVE DE DEPENCIA:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtClaveDependencia" runat="server" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #000000; height: 64px;">ESTADO DE NACIMIENTO:</td>
            <td style="width: 100px; height: 64px;">
                <asp:DropDownList ID="ddEstadoNacimiento" runat="server" Width="96px" DataSourceID="SqlDataSourceSI906" DataTextField="ENTIDAD_FEDERATIVA" DataValueField="CATALOG_KEY" Enabled="False">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Starting</asp:ListItem>
                    <asp:ListItem>Mild</asp:ListItem>
                    <asp:ListItem>Serious</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceSI906" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [ESTADOS]"></asp:SqlDataSource>
            </td>
            <td style="width: 100px; height: 64px;">
                <span style="color: #000000">CLAVE DEL PROGRAMA:</span></td>
            <td style="width: 100px; height: 64px;">
                <asp:TextBox ID="txtClavePrograma" runat="server" Enabled="False"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #000000;">SEXO:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddSexo" runat="server" Enabled="False">
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                    <asp:ListItem Value="H">Hombre</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 100px">&nbsp;</td>
            <td style="width: 100px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px; color: #000000;">NACIONALIDAD DE ORIGEN:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddNacionalidadOrigen" runat="server" DataSourceID="SqlDataSourceNacionalidad" DataTextField="PAIS" DataValueField="CODIGO_PAIS" Enabled="False">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceNacionalidad" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [NACIONALIDAD]"></asp:SqlDataSource>
            </td>
            <td style="width: 100px">&nbsp;</td>
            <td style="width: 100px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">
                <span style="color: #000000">FOLIO</span><span style="color: #000000; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFolio" runat="server" Enabled="False" ></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="subbtn" runat="server" Text="Eliminar" Width="94px" OnClick="subbtn_Click1" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" Text="Limpiar" OnClick="Button2_Click1" style="height: 26px" /></td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="24pt" ForeColor="Black" Text="Baja de pacientes" Font-Bold="True" CssClass="auto-style5"></asp:Label>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 135px;
            height: 36px;
        }
        .auto-style2 {
            width: 100px;
            height: 36px;
        }
        .auto-style3 {
            width: 135px;
            height: 26px;
        }
        .auto-style4 {
            width: 100px;
            height: 26px;
        }
        .auto-style5 {
            right: 62px;
            z-index: 100;
            left: 242px;
            position: absolute;
            top: 141px;
        }
    </style>
</asp:Content>

