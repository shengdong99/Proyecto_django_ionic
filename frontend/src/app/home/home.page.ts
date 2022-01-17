import { Component } from '@angular/core';
import { MenuService } from '../service/menu.service';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  getdata:any[]=[];
  
  constructor( public _services: MenuService){

    this._services.getdata<any[]>("").subscribe(data => {
      this.getdata = data
      console.log(this.getdata);
    })
    
  }
}
