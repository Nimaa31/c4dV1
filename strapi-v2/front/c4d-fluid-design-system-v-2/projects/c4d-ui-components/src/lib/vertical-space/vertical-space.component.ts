import { Component, Input } from "@angular/core";

@Component({
  selector: "lib-vertical-space",
  templateUrl: "./vertical-space.component.html",
  styleUrls: ["./vertical-space.component.css"],
})
export class VerticalSpaceComponent {
  @Input() enterNumber = "10";
  finalHeight = "";
  data: any;

  ngOnInit(): void {
    if (this.data) {
      this.enterNumber = this.data.EnterNumber;
    }
    this.finalHeight = this.enterNumber + "px";
  }
}
