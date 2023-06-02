<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPWeb_equipo_2.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .borde {
            border: 1px solid black;
        }

        .fuente {
            font-family: Arial, sans-serif;
            font-size: 16px;
        }

        .fondo {
            background-color: wheat;
        }
    </style>



    <div style="margin-left: 5%; margin-right: 5%">

        <hr class="border border-danger border-2 opacity-50">
        <h1 class="text-center">Detalle del articulo</h1>

        <hr class="border border-danger border-2 opacity-50">

        <div id="carouselExample" class="carousel slide">
            <div class="carousel-inner text-center">
                <asp:Repeater runat="server" ID="Repeater1">
                    <ItemTemplate>
                        <% if (a == 0)
                            { %>
                        <div class="carousel-item active">
                            <img src="<%#Container.DataItem %>" width="20%" id="imagen" />
                        </div>
                        <% a = 1;
                            }
                            else
                            {%>
                        <div class="carousel-item ">
                            <img src="<%#Container.DataItem %>" width="20%" id="imagen2" />
                        </div>
                        <%
                            } %>
                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" style="margin-left: 80%" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" style="margin-right: 80%" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>

        </div>

        <ul class="h6 list-group" style="width: auto;margin-right: 35%;margin-left: 35%">

            <%--<asp:TextBox ID="txtID" runat="server"></asp:TextBox>--%>
            <asp:Label Text="Nombre 👇" CssClass="text-center" runat="server" />
            <asp:Label Text="" CssClass="text-center fuente fondo borde" ID="lblNombre" runat="server" />
            <asp:Label Text="Descripcion 👇" CssClass="text-center" runat="server" />
            <asp:Label Text="" CssClass="text-center fuente fondo borde" ID="lblDescripcion" runat="server" />
            <asp:Label Text="Codigo 👇" CssClass="text-center" runat="server" />
            <asp:Label Text="" CssClass="text-center fuente fondo borde" ID="lblCodigo" runat="server" />
            <asp:Label Text="Marca 👇" CssClass="text-center" runat="server" />
            <asp:Label Text="" CssClass="text-center fuente fondo borde" ID="lblMarca" runat="server" />
            <%--<asp:TextBox ID="txtNombre" CssClass="text-center" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtdescripcion" CssClass="text-center" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtCodigo" CssClass="text-center" runat="server"></asp:TextBox>--%>
            <asp:Label Text="Volver a la pagina principal 👇" CssClass="text-center" runat="server" />
            <a href="Default.aspx" class="btn btn-outline-secondary text-center" type="button" id="btnVolver" style="color: black; margin-left: 2%">Volver</a>
        </ul>

    </div>

</asp:Content>
