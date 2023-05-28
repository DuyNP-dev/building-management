import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import {AuthGuard} from '../../helpers/auth.guard';
import {FloorsListComponent} from './floors-list/floors-list.component';
import {FloorsDeleteComponent} from './floors-delete/floors-delete.component';
import {IntroduceComponent} from './introduce/introduce.component';
import {NewsComponent} from './news/news.component';
import {News2Component} from './news2/news2.component';
import {ContactComponent} from './contact/contact.component';
import {New3Component} from './new3/new3.component';


const routes: Routes = [
  {
    path: 'list', component: FloorsListComponent, canActivate: [AuthGuard],
    data: {expectedRole: ['ROLE_ADMIN', 'ROLE_EMPLOYEE']}
  },
  {
    path: 'delete', component: FloorsDeleteComponent, canActivate: [AuthGuard],
    data: {expectedRole: ['ROLE_ADMIN', 'ROLE_EMPLOYEE']}
  },
  {
    path: 'introduce', component: IntroduceComponent
  },
  {
    path: 'news', component: NewsComponent
  },
  {
    path: 'news2', component: News2Component
  },
  {
    path: 'contact', component: ContactComponent
  },
  {
    path: 'news3', component: New3Component
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class FloorRoutingModule { }
