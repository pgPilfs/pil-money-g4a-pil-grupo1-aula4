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
    
    public class Cuentas
    {
       private string cvu;
       private double saldo;
       private string alias;
       private string tipoDeCaja;
       private int idTipoMoneda;
       private string cuil;
       
       public Cuentas(string cvu, double saldo, string alias, string tipoDeCaja, int idTipoMoneda, string cuil){
           this.cvu = cvu;
           this.saldo = saldo;
           this.alias = alias;
           this.tipoDeCaja = tipoDeCaja;
           this.idTipoMoneda = idTipoMoneda;
           this.cuil = cuil;
       }


       public string CVU {get => cvu; set => cvu = value;}
       public double Saldo {get => saldo; set => saldo = value;}
       public string Alias {get => alias; set => alias = value;}
       public int IdTipoMoneda {get => idTipoMoneda; set => idTipoMoneda = value;}
       public string CUIL {get => cuil; set => cuil = value;}
       public string TipoDeCaja{get => tipoDeCaja; set => tipoDeCaja = value;}
    }
    public class CuentasAlias
    {
        private string alias;

        public CuentasAlias(string alias)
        {
            this.alias = alias;
        }
        public string Alias { get => alias; set => alias = value; }
    }
}
