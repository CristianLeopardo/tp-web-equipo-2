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
        
        
        private void Page_Load(object sender, EventArgs e)
        {
            Carrito carro = new Carrito();
            List<Carrito> list = new List<Carrito>();
            if (Session["Carrito"] != null)       
            {
                list = (List<Carrito>)Session["Carrito"];
            }
            
            if (Request.QueryString["id"] != "")
            {
                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"]);
                    List<Articulos> temporal = (List<Articulos>)Session["listaArticulos"];
                    Articulos seleccionado = temporal.Find(x => x.id == id);                  
                    carro.id = seleccionado.id;
                    carro.Nombre = seleccionado.Nombre;
                    carro.Precio = seleccionado.Precio;
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