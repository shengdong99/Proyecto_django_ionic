import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class CategoryService {

  constructor(public _http: HttpClient) { }

  getdata<T> (url : string){
    url = 'http://127.0.0.1:8000/api/category/'
    return this._http.get<T[]>(url);
  }
  
}
