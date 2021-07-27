import { Component, OnInit } from '@angular/core';
import {FormBuilder, FormGroup} from '@angular/forms';

@Component({
  selector: 'app-invertir',
  templateUrl: './invertir.component.html',
  styleUrls: ['./invertir.component.css']
})
export class InvertirComponent implements OnInit {

  ngOnInit(): void {
  }

  selected = '30dias';

  checked = false;
  indeterminate = false;
  labelPosition: 'plazoFijoARS' | 'plazoFijoUSD' | 'FCIARS' | 'FCIUSD' = 'plazoFijoARS';
  disabled = false;
  labelRenovacion: 'si' | 'no' = 'si';

  
}

  



  

