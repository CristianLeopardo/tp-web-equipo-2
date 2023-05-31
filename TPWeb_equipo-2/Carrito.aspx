<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPWeb_equipo_2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola</h1>
    <div>
        <asp:Label Text="Cantidad de Articulos: " runat="server" />
        <asp:Label ID="lblSumaArt" runat="server"></asp:Label>
    </div>

    <asp:GridView runat="server" ID="dgvCarrito" OnRowCommand="dgvCarrito_RowCommand" class="table table-dark table-striped-columns" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="Id" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:ButtonField ButtonType="Button" CommandName="Eliminar" Text="Eliminar" HeaderText="Eliminar Articulo" />
        </Columns>
    </asp:GridView>
    
    <div>
        <a href="Default.aspx" class="btn btn-outline-secondary" type="button" id="btnVolver">Volver</a>
        <asp:Label Text="Monto total a pagar: " runat="server" />
        <asp:Label ID="lblMontoTotal" runat="server"></asp:Label>
    </div>
    

</asp:Content>
