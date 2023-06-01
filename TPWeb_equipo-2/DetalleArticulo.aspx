<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPWeb_equipo_2.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="margin-left:5%">
        <h1>Detalle del articulo</h1>
        <hr />
            <div id="carouselExample" class="carousel slide">
                <div class="carousel-inner" style="margin-left:2%">
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
                <button class="carousel-control-prev"  type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" style="margin-right:82%" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" style="margin-right:64.5%" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                    <span class="carousel-control-next-icon" style="margin-right:70%" aria-hidden="true"></span>
                    <span class="visually-hidden"  >Next</span>
                </button>

            </div>

            <ul class="list-group" style="width:20%; margin-left:2%">

                <%--<asp:TextBox ID="txtID" runat="server"></asp:TextBox>--%>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtdescripcion" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            </ul>
            <a href="Default.aspx" class="btn btn-outline-secondary" type="button" id="btnVolver" style="color:black; margin-left:2%">Volver</a>
    </div>
    
</asp:Content>
