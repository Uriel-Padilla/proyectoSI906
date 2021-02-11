<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Proyecto_SI_906.Menu" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server"/>
     <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource2" Width="97px" CssClass="auto-style2" Font-Names="Arial" Font-Size="X-Large">

    </asp:TreeView>
    <asp:SiteMapDataSource ID="SiteMapDataSource2" runat="server" />
    &nbsp;&nbsp;
   

    <asp:Image ID="ImageHospital" runat="server" ImageUrl="~/pics/Hospital.png" CssClass="auto-style1"  />
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            z-index: 103;
            left: 499px;
            position: absolute;
            top: 223px;
            width: 388px;
            height: 327px;
        }
        .auto-style2 {
            z-index: 103;
            left: 103px;
            position: absolute;
            top: 166px;
            width: 388px;
            height: 327px;
        }
    </style>
</asp:Content>
