import {
  Component,
  ElementRef,
  Input,
  ViewChild,
  ViewEncapsulation,
} from "@angular/core";

@Component({
  selector: "lib-paragraph",
  templateUrl: "./paragraph.component.html",
  styleUrls: ["./paragraph.component.css"],
})
export class ParagraphComponent {
  @Input() hasTitle!: boolean;
  @Input() title!: string;
  @Input() titleColor!: string;
  @Input() hasText!: boolean;
  @Input() text!: string;
  @Input() textColor!: string;
  @Input() hasButton!: boolean;
  @Input() textButton!: string;
  @Input() linkButton!: string;
  @Input() tintedColor!: string;
  data: any;

  async ngOnInit(): Promise<void> {
    this.hasTitle = this.data.HasTitle;
    this.title = this.data.Title;
    this.titleColor = this.data.TitleColor;
    this.tintedColor = this.data.TintedColor;
    this.hasText = this.data.HasText;
    this.text = this.processText(this.data.Text);
    this.textColor = this.data.TextColor;
    this.hasButton = this.data.HasButton;
    this.textButton = this.data.TextButton;
    this.linkButton = this.data.LinkButton;
  }

  processText(text: string) {
    const regex = /<tinted>(.*?)<\/tinted>|(\n)/gs;
    return text.replace(regex, (match, tinted, newline) => {
      if (tinted) {
        console.log(`<span>${tinted}</span>`);

        return `<span class="span">${tinted}</span>`;
      }
      if (newline) {
        return "<br>";
      }
      return match;
    });
  }

  ngAfterViewInit() {
    const span = document.getElementsByClassName("span")[0] as HTMLElement;
    span.style.color = this.tintedColor;
  }
}
