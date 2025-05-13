import { Component, Input } from "@angular/core";
import {
  AccordionDropDownAnimation,
  FadeAnimation,
} from "../../../../../src/app/shared/animations/accordionDropDown.animation";

@Component({
  selector: "lib-accordions",
  templateUrl: "./accordions.component.html",
  styleUrls: ["./accordions.component.css"],
  animations: [AccordionDropDownAnimation, FadeAnimation],
})
export class AccordionsComponent {
  @Input() title =
    "Nous créons des expériences singulières pour soutenir votre business et vous aider à faire la différence !";
  @Input() titleColor = "#fff";
  @Input() accordionTitleColor = "#fff";
  @Input() accordionContentColor = "#F28705";
  @Input() imgSrc!: string;
  @Input() accordionsItems: any[] = [];
  openedIndex = -1;
  data: any;

  ngOnInit(): void {
    this.title = this.data.Title;
    this.titleColor = this.data.TitleColor;
    this.accordionTitleColor = this.data.AccordionTitleColor;
    this.accordionContentColor = this.data.AccordionContentColor;
    this.imgSrc = this.data.ImgSrc.alternativeText + this.data.ImgSrc.url;
    this.accordionsItems = this.data.AccordionsItems.map((sp: any) => {
      return {
        title: sp.title,
        content: sp.content,
      };
    });
  }

  onAccordionClicked(index: number) {
    this.openedIndex = this.openedIndex === index ? -1 : index;
  }
}
