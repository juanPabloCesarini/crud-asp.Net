using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;



namespace crudConClase
{
    
    public class Usuario
    {
        public int codigo { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string mail { get; set; }
        public string clave { get; set; }
        
        
        public Usuario()
        {

        }
    }
}