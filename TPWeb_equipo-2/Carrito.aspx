<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="TPWeb_equipo_2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Hola</h1>
    <asp:GridView runat="server" ID="dgvCarrito"  class="table table-dark table-striped-columns"></asp:GridView>
    <a href="Default.aspx" class="btn btn-outline-secondary" type="button" id="btnVolver">Volver</a>
</asp:Content>
