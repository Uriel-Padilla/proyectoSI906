<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Farmacia.aspx.cs" Inherits="Proyecto_SI_906.Farmacia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/farmacia.png" CssClass="auto-style1" />
    <asp:Label ID="Label1" runat="server" Font-Bold="False" Font-Names="Arial Black" Font-Size="24pt"
        ForeColor="Black" Style="z-index: 101; left: 556px; position: absolute; top: 189px"
        Text="Farmacia"></asp:Label>
    <table style="z-index: 101; left: 469px; position: absolute; top: 258px">
        <tr>
            <td style="width: 149px; color: #000000;">
                MEDICAMENTO:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtNombre" runat="server" Width="265px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px; font-family: 'Lucida Console'; color: #000000;">
                DESCRIPCIÓN:</td>
            <td style="width: 100px">
                <asp:TextBox ID="txtDescripcion" runat="server" Height="96px" Width="268px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 149px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="Button1" runat="server"  Text="Guardar" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server"  Text="Limpiar" style="position: absolute" OnClick="Button2_Click" /></td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            z-index: 100;
            left: 104px;
            position: absolute;
            top: 200px;
            width: 309px;
            height: 298px;
        }
    </style>
</asp:Content>
