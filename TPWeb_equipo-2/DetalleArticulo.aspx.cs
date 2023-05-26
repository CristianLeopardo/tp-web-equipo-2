using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace TPWeb_equipo_2
{
    public partial class DetalleArticulo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Id"] != null)
            {
                int id = int.Parse(Request.QueryString["Id"].ToString());
                List<Articulos> temporal = (List<Articulos>)Session["listaArticulos"];
                Articulos seleccionado = temporal.Find(x => x.id == id);
                txtID.Text = seleccionado.id.ToString();
                txtCodigo.Text = seleccionado.Codigo;
                txtNombre.Text = seleccionado.Nombre;
                img1.ImageUrl = seleccionado.imagen.URLImagen;
            }
        }
    }
}