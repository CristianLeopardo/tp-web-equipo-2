<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWeb_equipo_2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row mt-1">
        <div class="bg-secondary py-3">
            <div class="container my-3">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">Tienda WEB</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Todos los productos aqui</p>
                </div>
            </div>
        </div>
    </div>
    <hr />

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%
            foreach (Dominio.Articulos art in ListaArticulos)
            {
        %>
                <div class="col">
                    <div class="card">
                        <img src="<%: art.Imagen2 %>" width="100"  class="card-img-top" alt="FotoArticulo">
                        <div class="card-body">
                            <h5 class="card-title"><%: art.Nombre %></h5>
                            <p class="card-text"><%: art.Descripcion %></p>
                            <p class="card-text">$<%: art.Precio %></p>
                            <div class="d-grid gap-2">
                                <a href="DetalleArticulo.aspx?id=<%: art.id%>" class="btn btn-outline-secondary" type="button" id="btnDetalle">Ver Detalle</a>
                                <a href="Carrito.aspx?id=<%: art.id%>" class="btn btn-outline-secondary" type="button" id="btnAgregar">Agregar al carrito</a>
                            </div>
                        </div>
                    </div>
                </div>
        <%   } %>
    </div>
</asp:Content>
