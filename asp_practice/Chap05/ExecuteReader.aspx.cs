using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace asp_practice.Chap05
{
    public partial class ExecuteReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var settings = ConfigurationManager.ConnectionStrings["asp_practice"];
            using (var db = new SqlConnection(settings.ConnectionString))
            {
                var comm = new SqlCommand("SELECT * FROM Book WHERE publi" +
                    "ch = @publish", db);
                comm.Parameters.AddWithValue("@publish", "翔泳社");
                db.Open();
                var reader = comm.ExecuteReader();

                while (reader.Read())
                {
                    Response.Write($"{reader["title"]}<br />");
                }
                db.Close();
            }
        }
    }
}