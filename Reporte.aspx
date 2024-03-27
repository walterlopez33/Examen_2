<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="Examen_Numero_2._2.Reporte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="CSS/Style.css" rel="stylesheet" />
    <link href="CSS/buttons.css" rel="stylesheet" />
<h1>
    Reportes
</h1>
</br>

</br>

    <div>
        <h2> Si Compraron Vehiculo</h2>
            <asp:Label CssClass="button1" ID="Label2" runat="server" Text="Label"></asp:Label>
    </div>
    </br>


    <div>
    <h2> No Compraron Vehiculo</h2>
        <asp:Label CssClass="button3" ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</br>



</asp:Content>
