import {
  Component,
  ElementRef,
  HostListener,
  Input,
  QueryList,
  ViewChild,
  ViewChildren,
} from "@angular/core";
import { ActivatedRoute } from "@angular/router";
import { convertHexToRgba } from "../../../../../src/app/shared/utils/colorConvertor.util";

interface JobOffer {
  title: string;
  requiredEducationLevel?: string;
  workType?: string;
  contractType?: string;
  jobDescription: string;
  link?: string;
  cardSpacing?: string;
}

@Component({
  selector: "lib-carousel-slide-job-offers",
  templateUrl: "./carousel-slide-job-offers.component.html",
  styleUrl: "./carousel-slide-job-offers.component.css",
})
export class CarouselSlideJobOffersComponent {
  @Input() inputBackgroundColor = "#fff";
  @Input() cardOpacity = 12;
  @Input() title = "Nos offres d’emplois";
  @Input() titleColor = "#fff";
  @Input() jobTitleColor = "#F28705";
  @Input() jobDescriptionColor = "#fff";
  @Input() jobHighlightedColor = "#F28705";
  @Input() jobBadgeColor = "#fff";
  @Input() jobBadgeBackgroundColor = "#1E2634";
  @Input() cards: JobOffer[] = [
    {
      title: "Back-End Developer",
      requiredEducationLevel: "Bac+3",
      workType: "Hybride",
      contractType: "CDI",
      jobDescription:
        "Rejoins une équipe dynamique pour concevoir des APIs performantes et sécurisées. Tu travailleras sur des projets innovants en étroite collaboration avec les équipes front-end.",
      link: "https://fr.linkedin.com/company/cloud4dev",
      cardSpacing: "",
    },
    {
      title: "Back-End Developer",
      requiredEducationLevel: "Bac+2",
      workType: "Hybride",
      contractType: "CDI",
      jobDescription:
        "Participe à la mise en place de microservices évolutifs. Idéal pour un profil motivé avec de bonnes bases en Node.js et une envie d'apprendre au quotidien.",
      link: "https://fr.linkedin.com/company/cloud4dev",
      cardSpacing: "",
    },
    {
      title: "Back-End Developer",
      requiredEducationLevel: "Bac+5",
      workType: "Hybride",
      contractType: "CDI",
      jobDescription:
        "Tu interviendras sur l’architecture globale de notre plateforme. Environnement stimulant, stack moderne, et challenge technique garanti.",
      link: "https://fr.linkedin.com/company/cloud4dev",
      cardSpacing: "",
    },
  ];

  outputBackgroundColor!: string;
  headerCardBackgroundColor!: string;
  leftLinearGradient!: string;
  rightLinearGradient!: string;
  pageBackgroundColor!: string;
  screenSize!: number;
  isCardCenter: boolean = true;
  spaceBetweenCards: any;
  showLinearGradient!: boolean;
  badgeWidth!: string;
  slides: any[] = [];
  data: any;

  @ViewChild("slideElement") slideElement!: ElementRef;
  @ViewChildren("card") cardElements!: QueryList<ElementRef>;
  @ViewChildren("badge") badgeElements!: QueryList<ElementRef>;

  constructor(private activatedRoute: ActivatedRoute) {}

  ngOnInit(): void {
    this.initializeSliderData();
    this.loadPageData();
    this.loadLinearGradient();
    this.screenSize = this.checkScreenSize();
    this.adjustSlides();
    this.outputBackgroundColor = convertHexToRgba(
      this.inputBackgroundColor,
      this.cardOpacity / 2
    );
    this.headerCardBackgroundColor = convertHexToRgba(
      this.inputBackgroundColor,
      this.cardOpacity
    );
  }

  loadPageData() {
    this.activatedRoute.data.subscribe((data: any) => {
      this.pageBackgroundColor = data.page.data.attributes.pageBackgroundColor;
    });
  }

  initializeSliderData() {
    // this.inputBackgroundColor = this.data.CardBackgroundColor;
    // this.enableTransparentCard = this.data.EnableTransparentCard;
    // this.title = this.data.Title;
    // this.titleColor = this.data.TitleColor;
    // this.descriptionColor = this.data.DescriptionColor;
    // this.cards = this.data.Cards.map((card: any) => {
    //   return {
    //     image:
    //       card.image.data.attributes.alternativeText +
    //       card.image.data.attributes.url,
    //     description: card.description,
    //   };
    // });
  }

  onClickJobOffer(link: string) {
    window.open(link, "_blank");
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
          const badgeElement =
            this.badgeElements.toArray()[index].nativeElement;
          const badgeWidth = badgeElement.offsetWidth + 20 + "px";

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
