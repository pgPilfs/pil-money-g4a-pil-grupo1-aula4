//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

   using System;
   using System.Collections.Generic;

namespace PilMoney.Models
{
 
    public class Venta
    {
        private int idVenta;
        private float importe;
        private System.DateTime fecha;
        private string cvu;

        public Venta(int idVenta, float importe, System.DateTime fecha, string cvu){
            this.idVenta = idVenta;
            this.importe = importe;
            this.fecha = fecha;
            this.cvu = cvu;
            
        }

        public int IdVenta {get => idVenta; set => idVenta = value;}
        public float Importe {get => importe; set => importe = value;}
        public System.DateTime Fecha {get => fecha; set => fecha = value;}
        public string CVU {get => cvu; set => cvu = value;}
        
    }
}
