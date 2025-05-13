import { Component, Input } from "@angular/core";

@Component({
  selector: "lib-ellipse",
  templateUrl: "./ellipse.component.html",
  styleUrl: "./ellipse.component.css",
})
export class EllipseComponent {
  @Input() fillColor = "#F28705";
  @Input() enableRightPosition = false;
  @Input() xPosition!: string;
  @Input() yPosition!: string;

  ngOnInit() {
    this.adjustPosition();
  }

  adjustPosition() {
    const percentageRegex = /%/;
    const screenWidth = this.checkScreenSize();
    const xOffset = this.enableRightPosition
      ? [425, 339.5, 305]
      : [187, 149.5, 125];
    const yOffset = this.enableRightPosition
      ? [208, 167, 136]
      : [208, 167, 136];

    if (screenWidth >= 1280) {
      this.xPosition = this.adjustValue(
        this.xPosition,
        xOffset[0],
        percentageRegex
      );
      this.yPosition = this.adjustValue(
        this.yPosition,
        yOffset[0],
        percentageRegex
      );
    } else if (screenWidth >= 1024) {
      this.xPosition = this.adjustValue(
        this.xPosition,
        xOffset[1],
        percentageRegex
      );
      this.yPosition = this.adjustValue(
        this.yPosition,
        yOffset[1],
        percentageRegex
      );
    } else {
      this.xPosition = this.adjustValue(
        this.xPosition,
        xOffset[2],
        percentageRegex
      );
      this.yPosition = this.adjustValue(
        this.yPosition,
        yOffset[2],
        percentageRegex
      );
    }
  }

  adjustValue(position: string, offset: number, regex: RegExp): string {
    if (!regex.test(position)) {
      return (parseInt(position) - offset).toString();
    }
    return position;
  }

  checkScreenSize(): number {
    return window.innerWidth;
  }
}
