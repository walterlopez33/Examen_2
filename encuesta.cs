using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Examen_Numero_2._2
{
    public class encuesta
    {
        public static int cantidadsi { get; set; }
        public static int cantidadno { get; set; }



        public static int Sicompro()
        {
            cantidadsi = 0;
            int resultado = 0;
            SqlConnection conexion = new SqlConnection((string)System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select count(compro)as [Posee Vehiculo] from vehiculo where compro ='si'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                cantidadsi = Convert.ToInt32(registro[0].ToString());
            }
            else
            {
                cantidadsi = 0;
            }
            conexion.Close();

            return cantidadsi;
        }


        public static int Nocompro()
        {
            cantidadsi = 0;
            int resultado = 0;
            string s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select count(compro)as [Posee Vehiculo] from vehiculo where compro ='no'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                cantidadno = Convert.ToInt32(registro[0].ToString());
            }
            else
            {
                cantidadno = 0;
            }
            conexion.Close();

            return cantidadno;
        }


                
            
        


    }
}