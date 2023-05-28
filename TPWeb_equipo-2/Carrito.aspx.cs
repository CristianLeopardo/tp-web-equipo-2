using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace TPWeb_equipo_2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        List<Carrito> list = new List<Carrito>();
        Carrito carro = new Carrito();
        private void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["id"] != "")
            {
                if (Request.QueryString["id"] != null)
                {
                    carro.id = int.Parse(Request.QueryString["id"]);
                    list.Add(carro);
                    Session.Add("Carrito", list);
                }
                
            }
            ArticuloNegocio articuloNegocio = new ArticuloNegocio();
            dgvCarrito.DataSource = Session["Carrito"];
            dgvCarrito.DataBind();
        }
    }
}