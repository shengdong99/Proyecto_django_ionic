import { Component, OnInit } from '@angular/core';
import {HttpClient} from '@angular/common/http'

@Component({
  selector: 'app-category',
  templateUrl: './category.page.html',
  styleUrls: ['./category.page.scss'],
})
export class CategoryPage implements OnInit {

  categories = []

  constructor(
    private http: HttpClient
  ) { }

  ngOnInit() {
    this.http.get<any>('http://127.0.0.1:8000/api/category')
      .subscribe(res => {
        console.log(res);
        this.categories = res.results;
      })
  }

}
