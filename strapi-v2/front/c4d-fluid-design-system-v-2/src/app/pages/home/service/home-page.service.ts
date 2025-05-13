import { Injectable } from '@angular/core';
import { Observable, forkJoin } from 'rxjs';
import { ENVIRONMENT_INITIALIZER } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class HomePageService {
  urlfooter = "https://backoffice.tools.cloud4dev.com/footers"
  urlSlider = "https://backoffice.tools.cloud4dev.com/homepage-sliders"
  urlCarousel ="https://backoffice.tools.cloud4dev.com/home-page-carousels"
  urlCarouselWithoutImage ="https://backoffice.tools.cloud4dev.com/homepage-carousel-without-images"
  urlClients="https://backoffice.tools.cloud4dev.com/clients/"
  urlCard="https://backoffice.tools.cloud4dev.com/homepage-cards"
  urlCardIntoComponent="https://backoffice.tools.cloud4dev.com/homepage-card-into-components"


  constructor(private http: HttpClient) {}
  getfooters(): Observable<any> {
    const options = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    return forkJoin([
      this.http.get(this.urlfooter, options),
    ]);
  }

  getsladers(): Observable<any> {
    const options = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    return forkJoin([
      this.http.get(this.urlSlider, options),
    ]);
  }
  getCarousel(): Observable<any> {
    const options = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    return forkJoin([
      this.http.get(this.urlCarousel, options),
    ]);
  }

  getCarouselWithoutImage(): Observable<any> {
    const options = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    return forkJoin([
      this.http.get(this.urlCarouselWithoutImage, options),
    ]);
  }
  getClients(): Observable<any> {
    const options = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    return forkJoin([
      this.http.get(this.urlClients, options),
    ]);
  }
  getCards(): Observable<any> {
    const options = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    return forkJoin([
      this.http.get(this.urlCard, options),
    ]);
  }
  getCardIntoComponent(): Observable<any> {
    const options = {
      headers: {
        'Content-Type': 'application/json'
      }
    };

    return forkJoin([
      this.http.get(this.urlCardIntoComponent, options),
    ]);
  }

}
