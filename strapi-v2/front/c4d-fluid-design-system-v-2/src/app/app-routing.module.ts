import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ContactComponent } from './pages/contact/contact.component';
import { HomeComponent } from './pages/home/home.component';
import { MainComponent } from './pages/main/main.component';
import { OurEngagementsComponent } from './pages/our-engagements/our-engagements.component';
import { WhoAreWeComponent } from './pages/who-are-we/who-are-we.component';
import { OurServicesComponent } from './pages/our-services/our-services.component';
import { GenericPageComponent } from './pages/generic-page/generic-page.component';

const routes: Routes = [
  { 
    path: '', component: MainComponent,
    children: [
      {
        path: '',
        component: GenericPageComponent,
      },
    ]
 },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
