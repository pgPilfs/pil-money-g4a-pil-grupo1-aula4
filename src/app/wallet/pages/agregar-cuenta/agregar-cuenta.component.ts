import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-agregar-cuenta',
  templateUrl: './agregar-cuenta.component.html',
  styleUrls: ['./agregar-cuenta.component.css']
})
export class AgregarCuentaComponent implements OnInit {
   constructor() { }

  ngOnInit(): void {
  }

  checked = false;
  indeterminate = false;
  labelPosition: 'Cuenta Pesos' | 'Cuenta USD' | 'Cuenta CRYPTO' = "Cuenta Pesos";
  disabled = false;
  labelRenovacion: 'si' | 'no' = 'si';

}