using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen3_Natalia.Encuestas
{
    public partial class EncuestasRegistro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            int edad = Convert.ToInt32(txtEdad.Text);
            string correo = txtCorreo.Text;
            string partido = txtPartido.Text;

            InsertarEncuesta(nombre, edad, correo, partido);
            Response.Redirect("EncuestaLista.aspx");
        }

        private void InsertarEncuesta(string nombre, int edad, string correo, string partido)
        {
                                   //SOURCE=NOMbre Del Servidor SQL, CATALOG=Nombre Base Datos
            string cadenaConexion = "Data Source=DES47390\\SQLEXPRESS;Initial Catalog=Encuestas;Integrated Security=True;";
            using (SqlConnection conexion = new SqlConnection(cadenaConexion))
            {
             
                conexion.Open();
                using (SqlCommand comando = new SqlCommand("[dbo].[RegistrarEncuesta]", conexion))
                {
                    comando.CommandType = CommandType.StoredProcedure;
                    comando.Parameters.AddWithValue("@Nombre", nombre);
                    comando.Parameters.AddWithValue("@Edad", edad);
                    comando.Parameters.AddWithValue("@CorreoElectronico", correo);
                    comando.Parameters.AddWithValue("@PartidoPolitico", partido);

                    comando.ExecuteNonQuery();
                }
            }
        }

        protected void BtnLista_Click(object sender, EventArgs e)
        {
            Response.Redirect("EncuestaLista.aspx");
        }
    }
}