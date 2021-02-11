<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Altas.aspx.cs" Inherits="Proyecto_SI_906.Altas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/alta.png" CssClass="auto-style1" />
    <asp:Label ID="Label1" runat="server" Font-Names="Arial Black" Font-Size="24pt" ForeColor="Black"
        Style="z-index: 101; left: 408px; position: absolute; top: 160px" Text="Resumen de altas"></asp:Label>
    <table class="auto-style2">
        <tr>
            <td style="width: 171px; font-family: 'Lucida Console'; color: #000000;">
                CURP:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtCurp" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Lucida Console'; color: #000000;" class="auto-style3">
                PACIENTE:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtPaciente" Enabled ="false"  runat="server" ReadOnly="True"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 171px; font-family: 'Lucida Console'; color: #000000;">
                FECHA DE LLEGADA:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFechaLLegada" runat="server" TextMode="DateTimeLocal"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 171px; font-family: 'Lucida Console'; color: #000000;">
                FECHA DE SALIDA:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtFechaSalida"  runat="server" TextMode="DateTimeLocal"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 171px">
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar registro" OnClick="btnIngresar_Click1" CssClass="auto-style7" Width="103px"  />
            </td>
            <td style="width: 100px">
                <asp:Button ID="btnCancelar" runat="server" CssClass="auto-style6" OnClick="btnCancelar_Click" Text="Cancelar" Width="89px" />
                </td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" CssClass="auto-style5" DataKeyNames="IdAlta" DataSourceID="SqlDataSourceTabla" AllowPaging="True" PageSize="2">
        <Columns>
            <asp:BoundField DataField="IdAlta" HeaderText="IdAlta" InsertVisible="False" ReadOnly="True" SortExpression="IdAlta" />
            <asp:BoundField DataField="CURP" HeaderText="CURP" SortExpression="CURP" />
            <asp:BoundField DataField="FECHA_LLEGADA" HeaderText="FECHA_LLEGADA" SortExpression="FECHA_LLEGADA" />
            <asp:BoundField DataField="FECHA_SALIDA" HeaderText="FECHA_SALIDA" SortExpression="FECHA_SALIDA" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="black" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceTabla" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringSI906 %>" SelectCommand="SELECT * FROM [Altas]"></asp:SqlDataSource>
    </asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            z-index: 100;
            left: 95px;
            position: absolute;
            top: 212px;
            width: 249px;
            height: 313px;
        }
        .auto-style2 {
            z-index: 101;
            left: 360px;
            position: absolute;
            top: 224px;
        }
        .auto-style3 {
            width: 171px;
            height: 26px;
        }
        .auto-style4 {
            width: 100px;
            height: 26px;
        }
        .auto-style5 {
            z-index: 104;
            left: 358px;
            position: absolute;
            top: 419px;
            width: 363px;
            height: 96px;
        }
        .auto-style6 {
            margin-left: 2px;
        }
        .auto-style7 {
            margin-left: 73px;
        }
    </style>
</asp:Content>
