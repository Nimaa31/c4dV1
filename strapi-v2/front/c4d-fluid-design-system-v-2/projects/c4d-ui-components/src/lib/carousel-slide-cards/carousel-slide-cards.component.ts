import {
  AfterViewInit,
  Component,
  ElementRef,
  HostListener,
  Input,
  OnInit,
  QueryList,
  ViewChild,
  ViewChildren,
} from "@angular/core";
import Swiper from "swiper";
import { convertHexToRgba } from "../../../../../src/app/shared/utils/colorConvertor.util";
import { ActivatedRoute } from "@angular/router";

@Component({
  selector: "lib-carousel-slide-cards",
  templateUrl: "./carousel-slide-cards.component.html",
  styleUrl: "./carousel-slide-cards.component.css",
})
export class CarouselSlideCardsComponent {
  @Input() inputBackgroundColor!: string;
  @Input() enableTransparentCard!: boolean;
  @Input() title!: string;
  @Input() titleColor!: string;
  @Input() descriptionColor!: string;
  @Input() cards: any[] = [];

  outputBackgroundColor!: string;
  leftLinearGradient!: string;
  rightLinearGradient!: string;
  pageBackgroundColor!: string;
  screenSize!: number;
  isCardCenter: boolean = true;
  spaceBetweenCards: any;
  showLinearGradient!: boolean;
  slides: any[] = [];
  data: any;

  @ViewChild("slideElement") slideElement!: ElementRef;
  @ViewChildren("card") cardElements!: QueryList<ElementRef>;

  constructor(private activatedRoute: ActivatedRoute) {}

  ngOnInit(): void {
    this.initializeSliderData();
    this.loadPageData();
    this.loadLinearGradient();
    this.screenSize = this.checkScreenSize();
    this.adjustSlides();
    this.outputBackgroundColor = convertHexToRgba(
      this.inputBackgroundColor,
      this.enableTransparentCard
    );
  }

  loadPageData() {
    this.activatedRoute.data.subscribe((data: any) => {
      this.pageBackgroundColor = data.page.data.attributes.pageBackgroundColor;
    });
  }

  initializeSliderData() {
    this.inputBackgroundColor = this.data.CardBackgroundColor;
    this.enableTransparentCard = this.data.EnableTransparentCard;
    this.title = this.data.Title;
    this.titleColor = this.data.TitleColor;
    this.descriptionColor = this.data.DescriptionColor;
    this.cards = this.data.Cards.map((card: any) => {
      return {
        image:
          card.image.data.attributes.alternativeText +
          card.image.data.attributes.url,
        description: card.description,
      };
    });
  }

  loadLinearGradient() {
    this.leftLinearGradient = `linear-gradient(to left, transparent 0%, ${this.pageBackgroundColor} 100%)`;
    this.rightLinearGradient = `linear-gradient(to right, transparent 0%, ${this.pageBackgroundColor} 100%)`;
  }

  @HostListener("window:resize", ["$event"])
  onResize(event: any) {
    this.screenSize = this.checkScreenSize();
    this.adjustSlides();
  }

  adjustSlides() {
    const screenWidth = this.checkScreenSize();

    if (this.cards.length <= 2) {
      this.showLinearGradient = false;
    } else {
      this.showLinearGradient = true;
    }

    if (screenWidth >= 1024) {
      this.slides = this.chunkArray(this.cards, 3);
      if (this.cards.length <= 2) {
        this.isCardCenter = true;
      } else {
        this.isCardCenter = false;
      }

      this.slides.forEach((slide, index) => {
        const cardCount = slide.length;

        setTimeout(() => {
          const cardElement = this.cardElements.toArray()[index].nativeElement;

          const slideWidth = this.slideElement.nativeElement.offsetWidth;
          const totalCardWidth = cardElement.offsetWidth * 3;
          this.spaceBetweenCards = (slideWidth - totalCardWidth) / 2;
        }, 0);

        if (cardCount <= 2 && !this.isCardCenter) {
          this.slides[index].justifyContent = "normal";

          setTimeout(() => {
            this.slides[index].forEach((card: any, cardIndex: number) => {
              if (cardIndex === 1) {
                card.cardSpacing = `${this.spaceBetweenCards}px`;
              }
            });
          }, 0);
        } else {
          this.slides[index].justifyContent = "space-between";
        }
      });
    } else if (screenWidth >= 640) {
      this.slides = this.chunkArray(this.cards, 2);
      this.isCardCenter = false;

      this.slides.forEach((slide, index) => {
        const cardCount = slide.length;
        if (cardCount <= 2) {
          this.slides[index].justifyContent = "space-between";
        }
      });
    } else {
      this.slides = this.chunkArray(this.cards, 1);
      this.isCardCenter = true;
    }
  }

  checkScreenSize(): number {
    return window.innerWidth;
  }

  chunkArray(array: any[], size: number): any[][] {
    const result = [];
    for (let i = 0; i < array.length; i += size) {
      result.push(array.slice(i, i + size));
    }
    return result;
  }
}
