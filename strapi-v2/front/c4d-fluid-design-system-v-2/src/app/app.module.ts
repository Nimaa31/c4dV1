import { APP_INITIALIZER, NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';

import { FormControl, FormsModule } from '@angular/forms';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
//import {C4dUiComponentsModule} from '@cloud4dev/c4d-fluid-design-system/cloud4dev/c4d-ui-components';
import { HomeComponent } from './pages/home/home.component';
import { MainComponent } from './pages/main/main.component';
import { C4dUiComponentsModule } from '../../projects/c4d-ui-components/src/public-api';
import { ContactComponent } from './pages/contact/contact.component';
import { OurEngagementsComponent } from './pages/our-engagements/our-engagements.component';
import { WhoAreWeComponent } from './pages/who-are-we/who-are-we.component';
import { OurServicesComponent } from './pages/our-services/our-services.component';
import { HttpClient, HttpClientModule } from '@angular/common/http';
import { RouterLoaderService } from './shared/services/router-loader.service';
import { GenericPageComponent } from './pages/generic-page/generic-page.component';
import { AdDirective } from './shared/directives/ad.directive';
import { Dictionary } from './shared/dictionary';
import { RouterOutlet } from '@angular/router';
import { NgxFileDropModule } from 'ngx-file-drop';
import { SolutionComponent } from './pages/solution/solution.component';



@NgModule({
  declarations: [
    AppComponent,
    HomeComponent,
    MainComponent,
    ContactComponent,
    OurEngagementsComponent,
    WhoAreWeComponent,
    OurServicesComponent,
    GenericPageComponent,
    AdDirective,
    SolutionComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    AppRoutingModule,
    C4dUiComponentsModule,
    BrowserAnimationsModule,
    HttpClientModule,
    NgxFileDropModule,
  ],
  providers: [
    {
      provide: APP_INITIALIZER,
      useFactory: ensureRoutesExist,
      multi: true,
      deps: [HttpClient, RouterLoaderService, Dictionary],
    },
    Dictionary,
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }

export function ensureRoutesExist(
  http: HttpClient,
  routeLoader: RouterLoaderService
) {
  return async () => await routeLoader.load();
}
