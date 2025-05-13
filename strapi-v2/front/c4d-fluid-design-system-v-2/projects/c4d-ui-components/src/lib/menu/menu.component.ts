import { Component, ElementRef, Input, ViewChild } from "@angular/core";
import { convertHexToRgba } from "../../../../../src/app/shared/utils/colorConvertor.util";
import { MenuService } from "../../../../../src/app/shared/services/menu.service";
import { MenuDropDownAnimation } from "../../../../../src/app/shared/animations/menuDropDown.animation";

@Component({
  selector: "lib-menu",
  templateUrl: "./menu.component.html",
  styleUrl: "./menu.component.css",
  animations: [MenuDropDownAnimation],
})
export class MenuComponent {
  @Input() inputBackgroundColor!: string;
  @Input() enableTransparentBackgroundColor!: boolean;
  @Input() separationBarColor!: string;
  @Input() title!: string;
  @Input() titleLink!: string;
  @Input() titleColor!: string;
  @Input() textColor!: string;
  @Input() textButton!: string;
  @Input() linkButton!: string;
  @Input() menuItems: any = <any>[];
  outputBackgroundColor!: string;
  menuClass = "rounded-2xl";
  isOpen = false;
  data: any;

  @ViewChild("menu") menu!: ElementRef;

  constructor(private menuService: MenuService) {}

  ngOnInit(): void {
    this.menuService.getMenuContent().subscribe((data: any) => {
      this.data = data.data[0].attributes;
      this.initializeMenuData();
      this.outputBackgroundColor = convertHexToRgba(
        this.inputBackgroundColor,
        this.enableTransparentBackgroundColor
      );
    });
  }

  initializeMenuData() {
    this.inputBackgroundColor = this.data.backgroundColor;
    this.enableTransparentBackgroundColor =
      this.data.enableTransparentBackground;
    this.separationBarColor = this.data.separationBarColor;
    this.title = this.data.title;
    this.titleLink = this.data.titleLink;
    this.titleColor = this.data.titleColor;
    this.textColor = this.data.textColor;
    this.textButton = this.data.textButton;
    this.linkButton = this.data.linkButton;
    this.menuItems = this.data.menuItems.map((mi: any) => {
      return {
        text: mi.text,
        href: mi.link,
      };
    });
  }

  showMenu() {
    this.menu.nativeElement.classList.toggle("active");
    this.isOpen = !this.isOpen;
    if (this.isOpen) {
      this.menuClass = "rounded-t-2xl";
    } else {
      setTimeout(() => {
        this.menuClass = "rounded-2xl";
      }, 500);
    }
  }
}
