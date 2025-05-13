import { Component, Input, Output, EventEmitter } from "@angular/core";

@Component({
  selector: "lib-button",
  templateUrl: "./button.component.html",
  styleUrls: ["./button.component.css"],
})
export class ButtonComponent {
  @Input() backgroundColor = "#2C3541";
  @Input() startColorLinearGradient = "#6763FF";
  @Input() endColorLinearGradient = "#F9968B";
  @Input() hoverBackgroundColor = "#F28705";
  @Input() textColor = "#fff";
  @Input() hoverTextColor = "#fff";
  @Input() text = "Nous Contacter";
  @Input() borderColor = "#F28705";
  @Input() valueToEmit: string = "";
  @Input() item!: string;
  @Input() isButtonLinkActive = false;
  @Input() link = "";
  @Input() linkOpenNewWindow = false;
  @Input() width!: string;
  finalLinearGradient!: string;
  isActive = false;
  isclick = false;

  @Output() clickEvent: EventEmitter<any> = new EventEmitter();

  ngOnInit(): void {
    this.finalLinearGradient = `linear-gradient(to right, ${this.startColorLinearGradient} 0%, ${this.endColorLinearGradient} 51%, ${this.startColorLinearGradient} 100%)`;
  }

  onClick() {
    this.isclick = !this.isclick;
    this.isActive = true;
    this.clickEvent.emit(this.valueToEmit);

    if (this.isButtonLinkActive && this.linkOpenNewWindow == false) {
      window.location.href = this.link;
    } else if (this.isButtonLinkActive && this.linkOpenNewWindow) {
      window.open(this.link, "_blank");
    }
  }

  onHoverButton() {
    this.isActive = true;
  }

  onLeaveButton() {
    if (!this.isclick) {
      this.isActive = false;
    } else {
      this.isActive = true;
    }
  }
}
