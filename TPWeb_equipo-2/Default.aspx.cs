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
        int posicion = 0;

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
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.ListaArtSP();
            Session.Add("listaArticulos", negocio.ListaArtSP());

        }

       
    }

}