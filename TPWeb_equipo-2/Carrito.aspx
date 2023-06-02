<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPWeb_equipo_2.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr class="border border-danger border-2 opacity-50">
    <h1 class="text-center text-decoration-underline">Carrito de compras</h1>

    <hr class="border border-danger border-2 opacity-50">

    <div style="margin-left: 5%; margin-right: 5%">
        <asp:GridView runat="server" ID="dgvCarrito" OnRowCommand="dgvCarrito_RowCommand" class="table table-dark table-striped-columns" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="Id" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" />
            <asp:ButtonField ButtonType="Button" CommandName="Eliminar" Text="Eliminar" ControlStyle-CssClass="text-bg-danger"  HeaderText="Eliminar Articulo" />
        </Columns>
    </asp:GridView>
    </div>
    


    <hr class="border border-danger border-2 opacity-50">
    <div class="col-form-label-lg tooltip-inner" style="width: 100%">
        <div>
            <asp:Label Text="Cantidad de Articulos: " runat="server" />
            <asp:Label ID="lblSumaArt" CssClass="text-bg-dark" runat="server"></asp:Label>
        </div>
        <div>
            <asp:Label Text="Monto total a pagar: " runat="server" />
            <asp:Label ID="lblMontoTotal" CssClass="text-bg-dark" runat="server"></asp:Label>
        </div>
        <hr class="border border-danger border-2 opacity-50">
        <div>
            <a href="Default.aspx" class="btn btn-outline-secondary text-body-emphasis" type="button" id="btnVolver">Volver</a>
        </div>


    </div>




</asp:Content>
