import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class MenuService {

  constructor(public _http: HttpClient) { }

  getdata<T> (url : string){
    url = 'http://127.0.0.1:8000/api/menuElement/'
    return this._http.get<T[]>(url);
  }
  
}
