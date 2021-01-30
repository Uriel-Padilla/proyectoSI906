<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="PatientRegistration.aspx.cs" Inherits="Proyecto_SI_906.PatientRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="z-index: 102; left: 104px; font-family: 'Lucida Console'; position: absolute; top: 190px">
        <tr>
            <td style="color: #FFFFFF;" class="auto-style3">CURP:&nbsp;</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtCurp" runat="server" MaxLength="18"></asp:TextBox></td>
            <td class="auto-style4">
                <span style="color: #FFFFFF">ESTADO</span><span style="color: #ffffff; font-family: Lucida Console">:</span></td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddEstado" runat="server" Width="96px" DataSourceID="SqlDataSourceSI906" DataTextField="ENTIDAD_FEDERATIVA" DataValueField="CATALOG_KEY">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Starting</asp:ListItem>
                    <asp:ListItem>Mild</asp:ListItem>
                    <asp:ListItem>Serious</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td style="width: 135px; font-size: 11pt; color: #FFFFFF;">PRIMER APELLIDO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtPrimerApellido" runat="server"></asp:TextBox></td>
            <td style="width: 100px; color: #FFFFFF;">MUNICIPIO:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddMunicipio" runat="server" Width="96px" DataSourceID="SqlDataSourceMunicipios" DataTextField="MUNICIPIO" DataValueField="CATALOG_KEY">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Starting</asp:ListItem>
                    <asp:ListItem>Mild</asp:ListItem>
                    <asp:ListItem>Serious</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceMunicipios" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [MUNICIPIOS]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF;">SEGUNDO APELLIDO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtSegundoApellido" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <span style="color: #FFFFFF">LOCALIDAD</span><span style="color: #ffffff; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddLocalidad" runat="server" Width="96px" DataSourceID="SqlDataSourceLocalidad" DataTextField="LOCALIDAD" DataValueField="CATALOG_KEY">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceLocalidad" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [LOCALIDADES]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 26px; color: #FFFFFF;">NOMBRE:</td>
            <td style="width: 100px; height: 26px">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px; color: #FFFFFF;">TIPO DE BENEFICIARIO:</td>
            <td style="width: 100px; height: 26px">
                <asp:DropDownList ID="ddTipoBeneficiario" runat="server">
                    <asp:ListItem Value="01">Trabajador/Asegurado</asp:ListItem>
                    <asp:ListItem Value="02">Beneficiario del Seguro Popular</asp:ListItem>
                    <asp:ListItem Value="03">Familiar</asp:ListItem>
                    <asp:ListItem Value="04">Pensionado</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #FFFFFF;" class="auto-style1">FECHA DE NACIMIENTO:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtFechaNac" runat="server"></asp:TextBox></td>
            <td style="color: #FFFFFF;" class="auto-style2">CLAVE DE DEPENCIA:</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtClaveDependencia" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF; height: 64px;">ESTADO DE NACIMIENTO:</td>
            <td style="width: 100px; height: 64px;">
                <asp:DropDownList ID="ddEstadoNacimiento" runat="server" Width="96px" DataSourceID="SqlDataSourceSI906" DataTextField="ENTIDAD_FEDERATIVA" DataValueField="CATALOG_KEY">
                    <asp:ListItem>...select...</asp:ListItem>
                    <asp:ListItem>Starting</asp:ListItem>
                    <asp:ListItem>Mild</asp:ListItem>
                    <asp:ListItem>Serious</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourceSI906" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [ESTADOS]"></asp:SqlDataSource>
            </td>
            <td style="width: 100px; height: 64px;">
                <span style="color: #FFFFFF">CLAVE DEL PROGRAMA:</span></td>
            <td style="width: 100px; height: 64px;">
                <asp:TextBox ID="txtClavePrograma" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF;">SEXO:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddSexo" runat="server">
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                    <asp:ListItem Value="H">Hombre</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 100px">&nbsp;</td>
            <td style="width: 100px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px; color: #FFFFFF;">NACIONALIDAD DE ORIGEN:</td>
            <td style="width: 100px">
                <asp:DropDownList ID="ddNacionalidadOrigen" runat="server" DataSourceID="SqlDataSourceNacionalidad" DataTextField="PAIS" DataValueField="CODIGO_PAIS">
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
                <span style="color: #FFFFFF">FOLIO</span><span style="color: #ffffff; font-family: Lucida Console">:</span></td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFolio" runat="server" ></asp:TextBox></td>
            <td style="width: 100px">
                <asp:Button ID="subbtn" runat="server" Text="Submit" Width="94px" OnClick="subbtn_Click" />
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button2" runat="server" Text="Limpiar" OnClick="Button2_Click" /></td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Font-Names="Modern" Font-Size="24pt" ForeColor="White"
        Style="z-index: 100; left: 260px; position: absolute; top: 148px" Text="Registro de pacientes" Font-Bold="True"></asp:Label>
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
    </style>
</asp:Content>

