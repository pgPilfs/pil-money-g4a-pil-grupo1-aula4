//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PilMoney.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Venta
    {
        public int idVenta { get; set; }
        public double Importe { get; set; }
        public System.DateTime Fecha { get; set; }
        public string CVU { get; set; }
    
        public virtual Cuentas Cuentas { get; set; }
    }
}
