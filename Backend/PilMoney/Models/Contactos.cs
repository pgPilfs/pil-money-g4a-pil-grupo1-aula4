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
    
    public partial class Contactos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Contactos()
        {
            this.Transferencias = new HashSet<Transferencias>();
        }
    
        public string CVUContacto { get; set; }
        public string AliasContacto { get; set; }
        public string CVU { get; set; }
        public int idContacto { get; set; }
    
        public virtual Cuentas Cuentas { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Transferencias> Transferencias { get; set; }
    }
}
