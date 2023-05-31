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
            if (!IsPostBack)
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
                CalcularMontoTotal();
            }
            
        }

        protected void dgvCarrito_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Eliminar")
            {
                int ID = Convert.ToInt32(e.CommandArgument);  //Convierte el evento en un valor entero
                List<Carrito> list = (List<Carrito>)Session["Carrito"];
                list.RemoveAt(ID);  //Eliminacion del articulo seleccionado

                Session["Carrito"] = list;

                dgvCarrito.DataSource = list;
                dgvCarrito.DataBind();
                CalcularMontoTotal();
            }
        }

        protected void CalcularMontoTotal()
        {
            List<Carrito> list = (List<Carrito>)Session["Carrito"];
            decimal montoTotal = 0;

            foreach (Carrito item in list)
            {
                montoTotal += item.Precio;
            }

            lblMontoTotal.Text = montoTotal.ToString("C0"); // "C0" En el ToString hace que este en formato Moneda y sin decimales
        }

    }
}