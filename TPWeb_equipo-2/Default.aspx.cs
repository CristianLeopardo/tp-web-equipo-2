 using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace TPWeb_equipo_2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public List<Articulos> ListaArticulos { get; set; }
        public List<Imagen> ListaImagenes { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarInfo();

            if (!IsPostBack)
            {
                if (Session["Carrito"] != null)
                {
                    List<Carrito> list = (List<Carrito>)Session["Carrito"];
                    int cantidadCarrito = list.Count;

                    lblCantidadCarrito.Text = cantidadCarrito.ToString();
                }
            }
        }

        private void cargarInfo()
        {
            if (Session["listaArticulos"] == null)
            {

            }
            if (!IsPostBack)
            {
                ddlFiltro.Items.Add("Marca");
                ddlFiltro.Items.Add("Categoria");
                ddlFiltro.Items.Add("Nombre");
            }
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.ListaArtSP();
            Session.Add("listaArticulos", negocio.ListaArtSP());
        }

        protected void txtbusqueda_TextChanged(object sender, EventArgs e)
        {
            string seleccion = ddlFiltro.SelectedValue.ToString();
            string bus = txtbusqueda.Text;
            List<Articulos> lista = (List<Articulos>)Session["listaArticulos"];
            List<Articulos> ListFiltrada = new List<Articulos>(); 
            switch (seleccion)
            {
                case "Marca":
                    ListFiltrada = lista.FindAll(x => x.marca.Descripcion.ToUpper().Contains(bus.ToUpper()));
                    ListaArticulos = ListFiltrada;
                    break;
                case "Categoria":
                    ListFiltrada = lista.FindAll(x => x.categoria.Descripcion.ToUpper().Contains(bus.ToUpper()));
                    ListaArticulos = ListFiltrada;
                    break;
                case "Nombre":
                    ListFiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(bus.ToUpper()));
                    ListaArticulos = ListFiltrada;

                    break;
            }
        }
    }

}