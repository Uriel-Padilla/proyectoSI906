<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_SI_906.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="labellogin" runat="server" Text="Login" style="z-index: 100; left: 146px; position: absolute; top: 208px" Font-Bold="False" Font-Names="Arial Black" Font-Size="24pt" ForeColor="Black"></asp:Label>
        <table style="z-index: 100; left: 140px; position: absolute; top: 303px; font-family: 'Lucida Console'; color: #000000;" class="auto-style1">
            <tr>
                <td style="width: 100px; height: 21px">
                    <span style="color: black">Usuario:</span></td>
                <td style="width: 100px; height: 21px">
                    <asp:TextBox ID="lidtxt" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px">
                    <span style="color: black">Contraseña:</span></td>
                <td style="width: 100px">
                    <asp:TextBox ID="pwdtxt" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 100px; height: 21px">
                </td>
                <td style="width: 100px; height: 21px">
                    <asp:Button ID="Button1" runat="server" Text="Login" Width="65px" OnClick="Button1_Click" /></td>
            </tr>
        </table>
        <asp:Menu ID="Menu1" runat="server" Font-Underline="True" ForeColor="black" Orientation="Horizontal"
            Style="z-index: 101; left: 138px; position: absolute; top: 501px; font-family: 'Lucida Console';">
            <Items>
                <asp:MenuItem Text="New user Signup" Value="New user Signup" NavigateUrl="~/UserRegistration.aspx"></asp:MenuItem>
                <asp:MenuItem Text="|Forgot Password?" Value="|Forgot Password?" NavigateUrl="~/Userforgot.aspx"></asp:MenuItem>
            </Items>
        </asp:Menu>
    <asp:Label ID="pwdlb" runat="server" style="z-index: 102; left: 266px; color: black; font-family: 'Lucida Console'; position: absolute; top: 535px" ForeColor="Black"></asp:Label>
    <asp:Image ID="Image1" runat="server" ImageUrl="~/pics/medico.png" CssClass="auto-style2" />
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            bottom: 157px;
        }
        .auto-style2 {
            z-index: 103;
            left: 555px;
            position: absolute;
            top: 221px;
            width: 344px;
            height: 317px;
        }
    </style>
</asp:Content>
