import { Component, OnInit } from '@angular/core';
import {HttpClient} from '@angular/common/http'
import { CategoryService } from '../service/category.service';


@Component({
  selector: 'app-category',
  templateUrl: './category.page.html',
  styleUrls: ['./category.page.scss'],
})

export class CategoryPage{

  getdata:any[]=[];
  
  constructor( public _services: CategoryService){

    this._services.getdata<any[]>("").subscribe(data => {
      this.getdata = data
      console.log(this.getdata);
    })
    
  }
  // constructor(
  //   private http: HttpClient
  // ) { }

  // async ngOnInit() {
  //   this.http.get<any>('http://127.0.0.1:8000/api/category')
  //     .subscribe(res => {
  //       console.log(res);
  //       this.categories = res.results;
        
  //     })
  // }

}
