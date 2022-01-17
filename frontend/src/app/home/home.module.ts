import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { IonicModule } from '@ionic/angular';
import { FormsModule } from '@angular/forms';
import { HomePage } from './home.page';

import { HomePageRoutingModule } from './home-routing.module';
import { CategoryPage } from '../category/category.page';
import { HeaderPage } from '../header/header.page';


@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    HomePageRoutingModule,
  ],
  declarations: [HomePage, CategoryPage, HeaderPage]
})
export class HomePageModule {}
