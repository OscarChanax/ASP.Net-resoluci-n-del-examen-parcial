using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP.Net_resolución_del_examen_parcial
{
    public partial class _Default : Page
    {
       List<Alumno> alumnos = new List<Alumno>();
       static List<Inscripciones> inscripciones = new List<Inscripciones>();
    

        private void LeerAlumnos ()
        {
            string fileName = Server.MapPath("~/Archivos/Alumnos.txt");

            FileStream stream = new FileStream(fileName, FileMode.Open, FileAccess.Read);
            StreamReader reader = new StreamReader(stream);

            while (reader.Peek() > -1)
           
            {
               Alumno alumno = new Alumno();
                alumno.carne = reader.ReadLine();
                alumno.nombre = reader.ReadLine();

                alumnos.Add(alumno);
            }
            reader.Close();
        }
    
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LeerAlumnos();

                DropDownList1.DataTextField = "Nombre";
                DropDownList1.DataValueField = "Carne";

                DropDownList1.DataSource = alumnos;
                DropDownList1.DataBind();
            }
           

        }

        private void GuardarInscripciones()
        {
            string fileName = Server.MapPath("~/Archivos/Inscripciones.txt");

            FileStream stream = new FileStream(fileName, FileMode.Create, FileAccess.Write);
        
            StreamWriter writer = new StreamWriter(stream);
            
            foreach (var inscripcion in inscripciones)
            {
                writer.WriteLine(inscripcion.carne);
                writer.WriteLine(inscripcion.grado);
                writer.WriteLine(inscripcion.fecha);
            }
            writer.Close();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Inscripciones inscripcion = new Inscripciones();

            inscripcion.carne = DropDownList1.SelectedValue;
            inscripcion.grado = Convert.ToInt16(TextBoxGrado.Text);
            inscripcion.fecha = DateTime.Now;

            inscripciones.Add(inscripcion);

            GuardarInscripciones();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}