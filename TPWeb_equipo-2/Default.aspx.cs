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
        private List<Articulos> ListaArticulos;

        protected void Page_Load(object sender, EventArgs e)
        {
            cargarInfo();
        }

        private void cargarInfo()
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            ListaArticulos = negocio.Listar();
            dgvArticulos.DataSource = ListaArticulos;
            dgvArticulos.DataBind();
        }
    }

}