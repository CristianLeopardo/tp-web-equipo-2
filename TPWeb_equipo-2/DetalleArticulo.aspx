<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="TPWeb_equipo_2.DetalleArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Detalle del articulo</h1>
    <hr />

    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <asp:Repeater runat="server"  ID="Repeater1">
                <ItemTemplate>
            <div class="carousel-item active">
                <img src="<%#Container.DataItem %>" width="150"/>
            </div>
            </ItemTemplate>
                </asp:Repeater>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
            
    </div>

    <ul class="list-group">
        
        <asp:TextBox ID="txtID" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
    </ul>
</asp:Content>
