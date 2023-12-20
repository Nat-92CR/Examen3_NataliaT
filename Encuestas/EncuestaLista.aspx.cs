using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen3_Natalia.Encuestas
{
    public partial class EncuestaLista : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEncuestas();
            }
        }
        private void CargarEncuestas()
        {
            string cadenaConexion = "Data Source=DES47390\\SQLEXPRESS;Initial Catalog=Encuestas;Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(cadenaConexion))
            {
                using (SqlCommand command = new SqlCommand("ObtenerEncuestasReporte", connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    connection.Open();

                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        // Asigna la fuente de datos al control que mostrará las encuestas (por ejemplo, un GridView)
                        GridViewEncuestas.DataSource = dataTable;
                        GridViewEncuestas.DataBind();
                    }
                }
            }
        }

        protected void BtnAgregarEncuesta_Click(object sender, EventArgs e)
        {
            Response.Redirect("EncuestasRegistro.aspx");
        }
    }
}