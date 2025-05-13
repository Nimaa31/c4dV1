import {
  AfterViewInit,
  Component,
  ElementRef,
  Input,
  OnInit,
  QueryList,
  ViewChild,
  ViewChildren,
} from "@angular/core";

@Component({
  selector: "lib-carousel-type-paragraph-icon",
  templateUrl: "./carousel-type-paragraph-icon.component.html",
  styleUrl: "./carousel-type-paragraph-icon.component.css",
})
export class CarouselTypeParagraphIconComponent {
  @Input() isReversedDirection!: boolean;
  @Input() title!: string;
  @Input() titleColor!: string;
  @Input() hasText!: boolean;
  @Input() text!: string;
  @Input() textColor!: string;
  @Input() hasButton!: boolean;
  @Input() buttonText!: string;
  @Input() buttonLink!: string;
  @Input() imgSrc!: string;
  @Input() icons: any = [];
  data: any;

  @ViewChildren("icons") iconElements!: QueryList<ElementRef>;

  ngOnInit(): void {
    this.loadCarouselData();
  }

  loadCarouselData() {
    this.isReversedDirection = this.data.IsReversedDirection;
    this.title = this.data.Title;
    this.titleColor = this.data.TitleColor;
    this.hasText = this.data.HasText;
    this.text = this.data.Text;
    this.textColor = this.data.TextColor;
    this.hasButton = this.data.HasButton;
    this.buttonText = this.data.ButtonText;
    this.buttonLink = this.data.ButtonLink;
    this.imgSrc = this.data.ImgSrc.alternativeText + this.data.ImgSrc.url;

    this.icons = this.data.Icons.map((ic: any) => {
      return {
        icon:
          ic.icon.data.attributes.alternativeText + ic.icon.data.attributes.url,
        text: ic.text,
      };
    });
    this.adjustIconSizes();
  }

  adjustIconSizes() {
    setTimeout(() => {
      this.iconElements.forEach((iconElement) => {
        const iconHeight = iconElement.nativeElement.clientHeight;

        if (iconHeight <= 55) {
          iconElement.nativeElement.style.height = "60px";
          iconElement.nativeElement.style.width = "auto";
        } else {
          iconElement.nativeElement.style.height = "60px";
          iconElement.nativeElement.style.width = "auto";
        }
      });
    });
  }
}
