import { Component, OnInit, OnDestroy } from '@angular/core';
import { HomePageService } from './service/home-page.service';
import { trigger, state, style, animate, transition } from '@angular/animations';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.scss'],
  animations: [
        trigger('scrollAnimation', [
          state('show', style({ opacity: 1 })),
          state('hide', style({ opacity: 0 })),
          transition('* => *', animate('400ms ease-in-out'))
        ])
      ]

})
export class HomeComponent implements OnInit, OnDestroy {
  public sladers  !:any[]
  public carousels  !: any[]
  public footers  !:any[]
  public carouselsWithoutImage  !:any[]
  public clientItems  !:any[]
  public cards  !:any[]
  public cardsIntocomponent  !:any[]
  public clientItem = [
    {
      'src': 'assets/hermes.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
    {
      'src': 'assets/rotshield&Co.svg',
      'href': '#',
    },
  ];
  public cardsIntocomponents = [
        {
          'imgSrc': './assets/card-example4.svg',
          'titleColor': '#FFFFFF',
          'textColor': '#FFFFFF',
          'titleType': 'H5',
          'title': 'Un rendez-vous en présentiel ?',
          'text': 'Pour se rencontrer et prendre un café ?',
          'colorButtonShowText': 'white',
          'maxLengthText':70
        },
        {
          'imgSrc': './assets/card-example4_2.svg',
          'titleColor': '#FFFFFF',
          'textColor': '#FFFFFF',
          'titleType': 'H5',
          'title': 'Un teams ?',
          'text': 'Plus adapté pour un premier contact visuel à distance ?',
          'colorButtonShowText': 'white',
          'maxLengthText':70
        },
        {
          'imgSrc': './assets/card-example4_3.svg',
          'titleColor': '#FFFFFF',
          'textColor': '#FFFFFF',
          'titleType': 'H5',
          'title': 'Un call ?',
          'text': 'Pour aller à l’essentiel et comprendre votre besoin ?',

          'colorButtonShowText': 'white',
          'maxLengthText':70
        },

      ];



     
  autoScrollInterval!: ReturnType<typeof setInterval>;
  public ourClientsTitle = "Ils nous font confiance"
  public ourClientsTitleColor = "#003290"

  data: any;
  constructor(private dataService:HomePageService) {}

  ngOnInit(): void {
    this.startAutoScroll();
    this.dataService.getsladers().subscribe(
      (response) => {
        this.data = response;

        if (this.data && this.data.length > 0) {
          const newArray = [];

          for (let i = 0; i < this.data[0].length; i++) {
            const newItem = {
              srcImage: 'https://backoffice.tools.cloud4dev.com'+this.data[0][i].image.url,
              text: this.data[0][i].text,
              titleText: this.data[0][i].title,
              isLeft:this.data[0][i].imagePositionLeft,
              isButtonDisplayed:this.data[0][i].hasButton,
              backgroundColor:this.data[0][i].backgroundColor,
              titleType:this.data[0][i].titleType,
              titleColor:this.data[0][i].titleColor,
              titleClasses:this.data[0][i].titleClasses,
              istitleDisplayed:this.data[0][i].istitleDisplayed

            };
            newArray.push(newItem);
            this.sladers = newArray
          }
        }
      },
      (error) => {
        console.log('Error retrieving data');
        console.error(error);
      }
    );
    this.dataService.getCarousel().subscribe(
      (response) => {
        this.data = response;
        this.carousels= this.data[0]
      },
      (error) => {
        console.log('Error retrieving data');
        console.error(error);
      }
    );
    this.dataService.getCarouselWithoutImage().subscribe(
      (response) => {
        this.data = response;
        this.carouselsWithoutImage = this.data[0]
      },
      (error) => {
        console.log('Error retrieving data');
        console.error(error);
      }
    );
    this.dataService.getClients().subscribe(
      (response) => {
        this.data = response;
        if (this.data && this.data.length > 0) {
          const newArray = [];

          for (let i = 0; i < this.data[0].length; i++) {
            const newItem = {
              src: 'https://backoffice.tools.cloud4dev.com'+this.data[0][i].src.url,
              href: this.data[0][i].href
            };
            newArray.push(newItem);
            this.clientItems = newArray
          }
        }
      },
      (error) => {
        console.log('Error retrieving data');
        console.error(error);
      }
    );
    this.dataService.getCards().subscribe(
      (response) => {
        this.data = response;
        this.cards = this.data[0]
      },
      (error) => {
        console.log('Error retrieving data');
        console.error(error);
      }
    );
    this.dataService.getCardIntoComponent().subscribe(
      (response) => {
        this.data = response;
        this.cardsIntocomponent= this.data[0]

      },
      (error) => {
        console.log('Error retrieving data');
        console.error(error);
      }
    );

    this.dataService.getfooters().subscribe(
      (response) => {
        this.data = response;
        this.footers = this.data[0]
      },
      (error) => {
        console.log('Error retrieving data');
        console.error(error);
      }
    );
  }
  ngOnDestroy() {
        this.stopAutoScroll();
      }
        startAutoScroll() {
    this.autoScrollInterval = setInterval(() => {
      const lastCard = this.cardsIntocomponents.pop();
      if (lastCard) {
        this.cardsIntocomponents.unshift(lastCard);
      }
    }, 3000);
  }
  stopAutoScroll() {
    clearInterval(this.autoScrollInterval);
  }
  getCardAnimationState(index: number) {
    if (this.cardsIntocomponents.length > 3) {
      if (index < 3) {
        return 'visible';
      } else {
        return 'hidden';
      }
    } else {
      return 'visible';
    }
  }
}























// import { Component, OnInit, OnDestroy } from '@angular/core';
// import { trigger, state, style, animate, transition } from '@angular/animations';

// @Component({
//   selector: 'app-home',
//   templateUrl: './home.component.html',
//   styleUrls: ['./home.component.scss'],
//   animations: [
//     trigger('scrollAnimation', [
//       state('show', style({ opacity: 1 })),
//       state('hide', style({ opacity: 0 })),
//       transition('* => *', animate('400ms ease-in-out'))
//     ])
//   ]
// })
// export class HomeComponent implements OnInit, OnDestroy {
//   public cardsIntocomponents = [
//     {

//       'imgSrc': './assets/card-example4.svg',
//       'titleColor': '#FFFFFF',
//       'textColor': '#FFFFFF',
//       'titleType': 'H5',
//       'title': 'Un rendez-vous en présentiel ?',
//       'text': 'Pour se rencontrer et prendre un café ?',
//     },
//     {
//       'imgSrc': './assets/card-example4.svg',
//       'titleColor': '#FFFFFF',
//       'textColor': '#FFFFFF',
//       'titleType': 'H5',
//       'title': 'Un rendez-vous en FCB ?',
//       'text': 'Pour se rencontrer et prendre un café ?',
//     },
//     {
//       'imgSrc': './assets/card-example4.svg',
//       'titleColor': '#FFFFFF',
//       'textColor': '#FFFFFF',
//       'titleType': 'H5',
//       'title': 'Un rendez-vous  PSG?',
//       'text': 'Pour se rencontrer et prendre un café ?',
//     },
//     {
//       'imgSrc': './assets/card-example4.svg',
//       'titleColor': '#FFFFFF',
//       'textColor': '#FFFFFF',
//       'titleType': 'H5',
//       'title': 'Un rendez-vous  PSG?',
//       'text': 'Pour se rencontrer et prendre un café ?',
//     },
//     {
//       'imgSrc': './assets/card-example4.svg',
//       'titleColor': '#FFFFFF',
//       'textColor': '#FFFFFF',
//       'titleType': 'H5',
//       'title': 'Un rendez-vous  PSG?',
//       'text': 'Pour se rencontrer et prendre un café ?',
//     },

//   ];


//   public ourClientsTitle = "Ils nous font confiance"
//   public ourClientsTitleColor = "#003290"


//   autoScrollInterval!: ReturnType<typeof setInterval>; // Variable to store the interval identifier

//   constructor() { }


//   ngOnInit() {
//     this.startAutoScroll(); // Start the auto-scrolling when the component initializes
//   }

//   ngOnDestroy() {
//     this.stopAutoScroll(); // Stop the auto-scrolling when the component is destroyed
//   }

//   startAutoScroll() {
//     this.autoScrollInterval = setInterval(() => {
//       const lastCard = this.cardsIntocomponents.pop(); // Remove the last card from the list
//       if (lastCard) {
//         this.cardsIntocomponents.unshift(lastCard); // Add the removed card to the beginning of the list
//       }
//     }, 3000); // Set the scrolling interval (3 seconds in this example)
//   }
//   stopAutoScroll() {
//     clearInterval(this.autoScrollInterval); // Stop the scrolling interval
//   }
//   getCardAnimationState(index: number) {
//     if (this.cardsIntocomponents.length > 3) {
//       if (index < 3) {
//         return 'visible';
//       } else {
//         return 'hidden';
//       }
//     } else {
//       return 'visible';
//     }
//   }
// }
