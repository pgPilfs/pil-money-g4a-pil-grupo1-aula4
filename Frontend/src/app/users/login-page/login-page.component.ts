import { LoginI } from './../../interfaces/login.interface';
import { RegisterI } from './../../interfaces/register.interface';
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormControl, Validators } from '@angular/forms';
import { DomSanitizer } from '@angular/platform-browser';
import { Router } from '@angular/router';
import { UsersService } from '../../services/users.service';

import { ToastrService } from 'ngx-toastr';
import { FormService } from 'src/app/services/form.service';

@Component({
  selector: 'app-login-page',
  templateUrl: './login-page.component.html',
  styleUrls: ['./login-page.component.css']
})
export class LoginPageComponent implements OnInit {

  fullImagePath: string
  fullImagePathDos: string
  hide: boolean = false;
  usuario! : LoginI;

  constructor(public formBuilder: FormBuilder, public sanitizer: DomSanitizer, private router: Router, private user: UsersService, private toast: ToastrService, public commonForm: FormService) {

    this.fullImagePath = '/assets/imagenes/img3.jpg'
    this.fullImagePathDos = '/assets/imagenes/img4.jpg'

  }

  myForm = this.formBuilder.group({
    nombreCompleto : this.commonForm.nombreCompleto,
    contraseña : this.commonForm.contraseña
  })

  login(form: LoginI) {

    this.user.login(form).subscribe(
      data =>{

          this.router.navigate(['./wallet/inicio']);
          /* console.log("DATA"+ JSON.stringify(data)); */
          this.toast.success('Se Inicio Sesion con la Cuenta Registrada', 'Correcto')



    }, error =>{
      console.log(error)
      this.toast.error('No esta registrada esta cuenta de Usuario', 'Error')
    })


  }





  ngOnInit(): void {

   /*  this.user.logout() */

  }
}

