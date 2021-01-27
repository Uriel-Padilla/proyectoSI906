<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Proyecto_SI_906.UserRegistration" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text=" Register Here " style="z-index: 100; left: 256px; position: absolute; top: 202px" Font-Names="Modern" Font-Size="32pt" ForeColor="Red" Width="231px"></asp:Label>
    <table style="z-index: 101; left: 234px; position: absolute; top: 275px; color: #ffffff; font-family: 'Lucida Console';">
    <tr><td style="height: 26px">Name</td><td style="height: 26px"><asp:TextBox ID="nametxt" runat="server"></asp:TextBox></td><td style="height: 26px; width: 157px;">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Name"
            Style="position: relative" ControlToValidate="nametxt">*</asp:RequiredFieldValidator></td></tr>
    <tr><td>Login Id</td><td><asp:TextBox ID="lidtxt" runat="server"></asp:TextBox></td><td style="width: 157px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Login Id"
            Style="position: relative" ControlToValidate="lidtxt">*</asp:RequiredFieldValidator></td></tr>
   
    <tr><td>Password</td><td><asp:TextBox ID="pwdtxt" runat="server"></asp:TextBox></td><td style="width: 157px">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pwdtxt"
            ErrorMessage="Enter Password" Style="position: relative">*</asp:RequiredFieldValidator></td></tr>
    <tr><td>Confirm Password</td><td><asp:TextBox ID="conpwdtxt" runat="server"></asp:TextBox></td><td style="width: 157px">
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pwdtxt"
            ControlToValidate="conpwdtxt" ErrorMessage="Not Matching" Style="position: relative">*</asp:CompareValidator></td></tr>
    <tr><td>Department</td><td>
        <asp:DropDownList ID="depddl" runat="server" Width="153px">
            <asp:ListItem>----Select----</asp:ListItem>
            <asp:ListItem>Administrador del sistema</asp:ListItem>
            <asp:ListItem>Administrador de la Clínica</asp:ListItem>
            <asp:ListItem>Laboratorista,</asp:ListItem>
            <asp:ListItem>Farmacéutico</asp:ListItem>
            <asp:ListItem>Enfermeros</asp:ListItem>
            <asp:ListItem>Médicos</asp:ListItem>
        </asp:DropDownList></td><td style="width: 157px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="depddl"
                ErrorMessage="Enter Your Department" Style="position: relative">*</asp:RequiredFieldValidator></td></tr>
    <tr><td>Phone Number</td><td><asp:TextBox ID="phtxt" runat="server"></asp:TextBox></td><td style="width: 157px"></td></tr>
    <tr><td>Address</td><td><asp:TextBox ID="addtxt" runat="server"></asp:TextBox></td><td style="width: 157px"></td></tr>
    <tr><td>E-Mail</td><td><asp:TextBox ID="emtxt" runat="server"></asp:TextBox></td><td style="width: 157px">
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emtxt"
            ErrorMessage="Incorrect Format" Style="position: relative" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td></tr>
    </table>
    <table style="z-index: 101; left: 299px; position: absolute; top: 549px; font-weight: bold; color: #ffffff; font-family: 'Lucida Console';">
    <tr><td style="width: 88px">
        <asp:Button ID="subbtn" runat="server" Text="Submit" Width="94px" OnClick="subbtn_Click" /></td>
        <td style="width: 93px">
        <asp:Button ID="Resbtn" runat="server" Text="Reset" Width="94px" OnClick="Resbtn_Click" /></td>
     <td style="width: 93px">
        <asp:Button ID="canbtn" runat="server" Text="Cancel" Width="94px" OnClick="canbtn_Click" /></td></tr>
    </table>
</asp:Content>

