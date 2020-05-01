using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.SqlClient;
using System.Data;

namespace crudConClase
{
    public class Transacciones
    {
        string sql = "";
        string msj = "";
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
       
        // Crear un objeto por Entidad (cada tabla de la db)
        Usuario us = new Usuario();
        
        public Transacciones()
        {
            this.con.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB; Initial catalog = agenda; Integrated Security= True; " ;
                                      
        }

        public DataTable consultar()
        {
            DataTable dato = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter();
            this.sql = "select * from tblUsuarios";
            try
            {
                this.con.Open();
                adapter = new SqlDataAdapter(this.sql, con.ConnectionString);
                adapter.Fill(dato);
               
            }
            catch (Exception ex)
            {
                msj = "Ocurrió un error: " + ex;
            }
            finally
            {
                this.con.Close();
            }
            return dato;
        }

        public bool insertar(Object objUsuario)
        {
            this.us = (Usuario)objUsuario;
            this.sql = "insert into tblUsuarios values ('"+this.us.nombre+"','"+this.us.apellido+"','"+this.us.mail+"','"+this.us.clave+"')";
            if (ejecutar(this.sql))
            {
                return true;
            }
            else
            {
                return false;
            }           
        }

        public bool modificar(Object objUsuario)
        {
            this.us = (Usuario)objUsuario;
            this.sql = "update tblUsuarios set nombre= '" + this.us.nombre + "', apellido = '" + this.us.apellido + "', mail='" + this.us.mail + "',clave='" + this.us.clave + "' where id ="+this.us.codigo+"";
            if (ejecutar(this.sql))
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool eliminar(int idUs)
        {
            this.sql = "delete * from tblUsuarios where id = " + idUs + "";
            if (ejecutar(this.sql))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool ejecutar (string sql)
        {
            try
            {
                this.cmd.CommandText = this.sql;
                this.cmd.Connection = this.con;
                this.cmd.Connection.Open();
                this.cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                msj = "Error: " + ex;
                return false;
            }
            finally
            {
                this.cmd.Connection.Close();
            }
        }
    }
}