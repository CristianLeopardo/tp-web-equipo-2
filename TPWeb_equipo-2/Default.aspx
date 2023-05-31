<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TPWeb_equipo_2.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand">Filtrar busqueda</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 80px;">
                        <li class="nav-item dropdown">
                            <asp:DropDownList ID="ddlFiltro" CssClass="dropdown" runat="server"></asp:DropDownList>
                        </li>   
                    </ul>
                    <form class="d-flex" role="search">
                        <asp:TextBox ID="txtbusqueda" type="search" CssClass="form-control me-2" OnTextChanged="txtbusqueda_TextChanged" runat="server"></asp:TextBox>
                        <button class="btn btn-outline-success" id="btnBuscar" type="submit">Buscar</button>
                    </form>
                </div>
            </div>
        </nav>
    </header>

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
    <div>
        <asp:Label Text="Cantidad de Articulos en el Carrito: " runat="server" />
        <asp:Label ID="lblCantidadCarrito" runat="server" />
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4">

        <%
            foreach (Dominio.Articulos art in ListaArticulos)
            {
        %>
                <div class="col">
                    <div class="card">
                        <img src="<%: art.Imagen2 %>" width="40" class="card-img-top" alt="FotoArticulo">
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
