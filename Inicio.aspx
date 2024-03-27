<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="Examen_Numero_2._2.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="CSS/Style.css" rel="stylesheet" />
<link href="CSS/buttons.css" rel="stylesheet" />

<h1>
    Encuesta
</h1>
</br>


<div>
    Nombre:
    <asp:TextBox ID="Tnombre" runat="server" required></asp:TextBox>
</div>

<div>
    Apellido:
    <asp:TextBox ID="Tapellido" runat="server" required ></asp:TextBox>
</div>





<div>
    Edad:
    <asp:TextBox ID="Tedad" runat="server" TextMode="Number" required ></asp:TextBox>
    <br />
</div>
</br>




<div>
    Correo:
    <asp:TextBox ID="Temail" runat="server" TextMode="Email" required  ></asp:TextBox>
    <br />
</div>
</br>



<div>
    <label for="vehiculo">Compro Vehiculo</label>
    <select id="vehiuclo" name="country">
      <option value="si">si</option>
      <option value="no">no</option>
    </select>
    </div>
    </br>



<div>
    <asp:Button class="button button2" ID="Benviar" runat="server" Text="Enviar" OnClick="Benviar_Click" />
</div>
    <br />
    <br />
</br>




<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idencuesta" DataSourceID="encuesta3">
        <Columns>
            <asp:BoundField DataField="idencuesta" HeaderText="idencuesta" InsertVisible="False" ReadOnly="True" SortExpression="idencuesta" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
            <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            <asp:BoundField DataField="edad" HeaderText="edad" SortExpression="edad" />
            <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="encuesta3" runat="server" ConnectionString="<%$ ConnectionStrings:connectionString %>" ProviderName="<%$ ConnectionStrings:connectionString.ProviderName %>" SelectCommand="SELECT * FROM [datos]"></asp:SqlDataSource>
</div>
</br>




</asp:Content>




