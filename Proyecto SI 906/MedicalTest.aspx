<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="MedicalTest.aspx.cs" Inherits="Proyecto_SI_906.MedicalTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Image ID="Image1" runat="server" style="z-index: 100; left: 588px; position: absolute; top: 240px" Height="249px" ImageUrl="~/pics/lab1.jpg" Width="327px"/>
    <asp:Label ID="Label1" runat="server" Text="Test Médicos" style="z-index: 101; left: 113px; position: absolute; top: 150px" Font-Names="Arial Black" Font-Size="24pt" ForeColor="Black"></asp:Label>
<table style="z-index: 102; left: 112px; color: black; font-family: 'Lucida Console'; position: absolute; top: 203px" id="TABLE1">
   <tr>
       <td>
            &nbsp;</td>
       <td>
           &nbsp;</td>
   </tr>
   <tr>
       <td>
            CURP del paciente:
       </td>
       <td>
           <asp:TextBox ID="txtCurp" runat="server"></asp:TextBox>
           <br />
           <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
       </td>
   </tr>
   <tr>
         <td>
             Nombre del Paciente:
         </td>
         <td>
             <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
         </td>
   </tr>
   <tr>
         <td>
              Tipo de Test Médico:
         </td>
         <td>
             <asp:DropDownList ID="mttddl" runat="server" AutoPostBack="True" Width="156px" >
                 <asp:ListItem>...Select...</asp:ListItem>
                 <asp:ListItem>Prueba de sangre</asp:ListItem>
                 <asp:ListItem>Prueba de orina</asp:ListItem>
          </asp:DropDownList>
         </td>
   </tr>
    
</table>
<asp:Panel ID="Panel1" runat="server" Height="200px" Width="200px" style="z-index: 103; left: 115px; position: absolute; top: 368px; color: white; font-family: Lucida Console; visibility:hidden;">
   
    <table style="color: white; font-family: 'Lucida Console'; width: 353px;" >
         <tr>
              <td>
                  Grupo sanguíneo:
              </td>
              <td>
                  <asp:TextBox ID="bgtxt" runat="server"></asp:TextBox>
              </td>
        </tr>
        <tr>
              <td>Hemoglobina</td>
              <td>
                  <asp:TextBox ID="hmtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                    Azúcar en la sangre:
              </td>
              <td>
                  <asp:TextBox ID="bstxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                   Acído úrico:
              </td>
              <td> 
                  <asp:TextBox ID="suatxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
             <td>
                 Reporte - descripción:
             </td>
             <td>
                   <asp:TextBox ID="rd1txt" runat="server"></asp:TextBox>
             </td>
         </tr>
         
    </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" Height="200px" Width="200px" style="z-index: 104; left: 116px; position: absolute; top: 373px; color: white; font-family: Lucida Console; visibility: hidden;">
     
    <table style="color: white; font-family: 'Lucida Console'; width: 353px;" >
         <tr>
              <td style="height: 26px">
                 Color
              </td>
              <td style="height: 26px">
                  <asp:TextBox ID="colortxt" runat="server"></asp:TextBox>
              </td>
        </tr>
        <tr>
              <td>Claridad</td>
              <td>
                  <asp:TextBox ID="clartxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                    Olor
              </td>
              <td>
                  <asp:TextBox ID="odtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
              <td>
                   Complicación específica:
              </td>
              <td> 
                  <asp:TextBox ID="sgtxt" runat="server"></asp:TextBox>
              </td>
         </tr>
         <tr>
             <td>
                 Glucosa
             </td>
             <td>
                   <asp:TextBox ID="gltxt" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td style="height: 24px">
                 Reporte - descripción:
             </td>
             <td style="height: 24px">
                   <asp:TextBox ID="rd2txt" runat="server"></asp:TextBox>
             </td>
         </tr>
         
    </table>
    </asp:Panel>
    <table style="z-index: 103; left: 213px; width: 184px; position: absolute; top: 555px">
    <tr><td>
        <asp:Button ID="Button2" runat="server" Text="Save" Width="81px" /></td>
    <td><asp:Button ID="Button3" runat="server" Text="Cancel" Width="81px" OnClick="Button3_Click" /></td></tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
</asp:Content>

