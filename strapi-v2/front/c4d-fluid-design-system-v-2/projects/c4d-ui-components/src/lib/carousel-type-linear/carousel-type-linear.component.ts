import { Component, ElementRef, Input, ViewChild } from "@angular/core";

@Component({
  selector: "lib-carousel-type-linear",
  templateUrl: "./carousel-type-linear.component.html",
  styleUrls: ["./carousel-type-linear.component.css"],
})
export class CarouselTypeLinearComponent {
  @Input() startColorLinearGradient!: string;
  @Input() endColorLinearGradient!: string;
  @Input() title!: string;
  @Input() titleColor!: string;
  @Input() hasSubtitle!: boolean;
  @Input() subtitle!: string;
  @Input() subtitleColor!: string;
  @Input() hasButton!: boolean;
  @Input() buttonText!: string;
  @Input() buttonLink!: string;
  @Input() imgSrc!: string;
  @Input() enableLinearGradient!: boolean;
  finalLinearGradient!: string;
  finalButtonLinearGradient!: string;
  subtitleWidth!: string;
  data: any;

  @ViewChild("element") element!: ElementRef;

  ngOnInit(): void {
    this.loadCarouselData();
    this.loadLinearGradient();
  }

  loadLinearGradient() {
    this.finalLinearGradient = `linear-gradient(to right, ${this.startColorLinearGradient} 0%, ${this.endColorLinearGradient} 100%)`;
    if (this.enableLinearGradient && this.hasSubtitle) {
      this.element?.nativeElement?.classList.toggle("subtitle-text");
    }
  }

  loadCarouselData() {
    this.startColorLinearGradient = this.data.StartColorLinearGradient;
    this.endColorLinearGradient = this.data.EndColorLinearGradient;
    this.title = this.data.Title;
    this.titleColor = this.data.TitleColor;
    this.hasSubtitle = this.data.HasSubtitle;
    this.subtitle = this.data.Subtitle;
    this.subtitleColor = this.data.SubtitleColor;
    this.hasButton = this.data.HasButton;
    this.buttonText = this.data.ButtonText;
    this.buttonLink = this.data.ButtonLink;
    this.imgSrc = this.data.ImgSrc.alternativeText + this.data.ImgSrc.url;
    this.enableLinearGradient = this.data.EnableLinearGradient;
  }
}
