import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FloorRoutingModule } from './floor-routing.module';
import { FloorsListComponent } from './floors-list/floors-list.component';
import { FloorsDeleteComponent } from './floors-delete/floors-delete.component';
import { FloorsEditComponent } from './floors-edit/floors-edit.component';
import { IntroduceComponent } from './introduce/introduce.component';
import { NewsComponent } from './news/news.component';
import { News2Component } from './news2/news2.component';
import { ContactComponent } from './contact/contact.component';
import {ReactiveFormsModule} from '@angular/forms';
import { New3Component } from './new3/new3.component';
@NgModule({
  declarations: [FloorsListComponent, FloorsDeleteComponent, FloorsEditComponent, IntroduceComponent, NewsComponent, News2Component, ContactComponent, New3Component],
  exports: [
    FloorsListComponent
  ],
    imports: [
        CommonModule,
        FloorRoutingModule,
        ReactiveFormsModule,

    ]
})
export class FloorModule { }
