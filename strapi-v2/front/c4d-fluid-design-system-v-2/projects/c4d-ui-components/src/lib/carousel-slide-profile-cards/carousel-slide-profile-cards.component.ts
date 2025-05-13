import {
  AfterViewInit,
  Component,
  ElementRef,
  HostListener,
  Input,
  QueryList,
  ViewChild,
  ViewChildren,
  Renderer2,
  ViewEncapsulation,
} from "@angular/core";
import Swiper from "swiper";
import { convertHexToRgba } from "../../../../../src/app/shared/utils/colorConvertor.util";
import { ActivatedRoute } from "@angular/router";

@Component({
  selector: "lib-carousel-slide-profile-cards",
  templateUrl: "./carousel-slide-profile-cards.component.html",
  styleUrl: "./carousel-slide-profile-cards.component.css",
  encapsulation: ViewEncapsulation.None,
})
export class CarouselSlideProfileCardsComponent implements AfterViewInit {
  @Input() inputBackgroundColor!: string;
  @Input() enableTransparentCard!: boolean;
  @Input() title!: string;
  @Input() titleColor!: string;
  @Input() tintedColor!: string;
  @Input() nameColor!: string;
  @Input() jobColor!: string;
  @Input() descriptionColor!: string;
  @Input() hasButton!: boolean;
  @Input() enableLinearGradient!: boolean;
  @Input() startColorLinearGradient!: string;
  @Input() endColorLinearGradient!: string;
  @Input() buttonText!: string;
  @Input() buttonLink!: string;
  @Input() cards: any[] = [];

  outputBackgroundColor!: string;
  leftLinearGradient!: string;
  rightLinearGradient!: string;
  pageBackgroundColor!: string;
  screenSize!: number;
  avatarMargin!: string;
  cardMargin!: string;
  cardPadding!: string;
  isTextOverflow!: boolean;
  isCardCenter: boolean = true;
  spaceBetweenCards: any;
  showLinearGradient!: boolean;
  slides: any[] = [];
  data: any;

  @ViewChild("slideElement") slideElement!: ElementRef;
  @ViewChild("avatar") avatar!: ElementRef;
  @ViewChildren("card") cardElements!: QueryList<ElementRef>;
  @ViewChildren("titleContainer") titleContainers!: QueryList<ElementRef>;

  constructor(
    private activatedRoute: ActivatedRoute,
    private renderer: Renderer2
  ) {}

  ngOnInit(): void {
    this.initializeSliderData();
    this.loadPageData();
    this.loadLinearGradient();
    this.screenSize = this.checkScreenSize();
    this.adjustSlides();
    this.adjustSlideHeight();
    this.outputBackgroundColor = convertHexToRgba(
      this.inputBackgroundColor,
      this.enableTransparentCard
    );
  }

  ngAfterViewInit() {
    this.checkOverflow();
    this.applyTintedColor();
  }

  loadPageData() {
    this.activatedRoute.data.subscribe({
      next: (data) => {
        this.activatedRoute.data.subscribe((data: any) => {
          this.pageBackgroundColor =
            data.page.data.attributes.pageBackgroundColor;
        });
      },
      error: (err) => {
        console.error(err);
      },
      complete: () => {
        console.log("complete");
      },
    });
  }

  initializeSliderData() {
    this.inputBackgroundColor = this.data.CardBackgroundColor;
    this.enableTransparentCard = this.data.EnableTransparentCard;
    this.tintedColor = this.data.TintedColor;
    this.title = this.processText(this.data.Title);
    this.titleColor = this.data.TitleColor;
    this.nameColor = this.data.CardNameColor;
    this.jobColor = this.data.CardJobColor;
    this.descriptionColor = this.data.CardDescriptionColor;
    this.hasButton = this.data.HasButton;
    this.enableLinearGradient = this.data.EnableLinearGradient;
    this.startColorLinearGradient = this.data.StartColorLinearGradient;
    this.endColorLinearGradient = this.data.EndColorLinearGradient;
    this.buttonText = this.data.ButtonText;
    this.buttonLink = this.data.ButtonLink;
    this.cards = this.data.Cards.map((card: any) => {
      return {
        image:
          card.image.data.attributes.alternativeText +
          card.image.data.attributes.url,
        name: card.name,
        job: card.job,
        description: card.description,
        socialMedias: card.socialMedias.map((sm: any) => {
          return {
            icon:
              sm.icon.data.attributes.alternativeText +
              sm.icon.data.attributes.url,
            link: sm.link,
          };
        }),
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

  adjustSlideHeight() {
    setTimeout(() => {
      const screenWidth = this.checkScreenSize();
      if (screenWidth >= 1580) {
        this.cardPadding =
          this.avatar.nativeElement.offsetHeight / 2 + 14 + "px";
      } else if (screenWidth >= 1024) {
        this.cardPadding =
          this.avatar.nativeElement.offsetHeight / 2 + 10 + "px";
      } else if (screenWidth >= 640) {
        this.cardPadding =
          this.avatar.nativeElement.offsetHeight / 2 + 8 + "px";
      } else {
        this.cardPadding =
          this.avatar.nativeElement.offsetHeight / 2 + 6 + "px";
      }
      this.cardMargin = this.avatar.nativeElement.offsetHeight / 2 + 14 + "px";
      this.avatarMargin = "-" + this.cardMargin;
    }, 0);
  }

  checkOverflow() {
    setTimeout(() => {
      this.cards.forEach((card, index) => {
        const titleContainerElement = this.titleContainers.toArray()[index];
        const cardElement = this.cardElements.toArray()[index];
        if (!titleContainerElement || !cardElement) return;

        const titleContainerWidth =
          titleContainerElement.nativeElement.offsetWidth;
        const cardWidth = cardElement.nativeElement.offsetWidth;
        const isOverflow = titleContainerWidth + 48 >= cardWidth;

        if (isOverflow) {
          titleContainerElement.nativeElement.style.flexDirection = "column";
        } else {
          titleContainerElement.nativeElement.style.flexDirection = "row";
        }
      });
    }, 0);
  }

  processText(text: string): string {
    const regex = /<tinted>(.*?)<\/tinted>|<linear>(.*?)<\/linear>|(\n)/gs;
    return text.replace(regex, (match, tinted, linear, newline) => {
      if (tinted) {
        return `<span class="span1">${tinted}</span>`;
      }
      if (linear) {
        return `<span class="linear">${linear}</span>`;
      }
      if (newline) {
        return "<br>";
      }
      return match;
    });
  }

  applyTintedColor() {
    const span = document.getElementsByClassName("span1")[0] as HTMLElement;
    const linear = document.getElementsByClassName("linear")[0] as HTMLElement;

    if (span && linear) {
      span.style.color = this.tintedColor;
      linear.style.backgroundImage = `linear-gradient(to right, ${this.startColorLinearGradient} 0%, ${this.endColorLinearGradient} 100%)`;
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
