import { UsersService } from './../../services/users.service';
import { Component } from '@angular/core';


@Component({
  selector: 'app-sidebar',
  templateUrl: './sidebar.component.html',
  styleUrls: ['./sidebar.component.css']
})
export class SidebarComponent {
  logoPil    : string = 'assets/imagenes/pil-Money-Logo.png';

constructor(public user: UsersService){
  
}

}
