import { Component, ElementRef, Input, ViewChild } from "@angular/core";
import {
  AbstractControl,
  FormControl,
  FormGroup,
  Validators,
} from "@angular/forms";
import { FooterService } from "../../../../../src/app/shared/services/footer.service";
import { convertHexToRgba } from "../../../../../src/app/shared/utils/colorConvertor.util";
import { SendDataService } from "../../../../../src/app/shared/services/send-data.service";

@Component({
  selector: "lib-footer",
  templateUrl: "./footer.component.html",
  styleUrl: "./footer.component.css",
})
export class FooterComponent {
  @Input() inputBackgroundColor!: string;
  @Input() outputBackgroundColor!: string;
  @Input() enableTransparentBackgroundColor!: boolean;
  @Input() title!: string;
  @Input() titleColor!: string;
  @Input() textColor!: string;
  @Input() newsletterTitle!: string;
  @Input() newsletterTitleColor!: string;
  @Input() copyrightText!: string;
  @Input() inputPlaceholder!: string;
  @Input() textPopup!: string;
  @Input() textColorPopup!: string;
  @Input() popupBorderColor!: string;
  @Input() startColumn: any = <any>[];
  @Input() centerColumn: any = <any>[];
  @Input() endColumn: any = <any>[];
  @Input() legalItems: any = <any>[];
  @Input() socialItems: any = <any>[];
  sendingFormPopupPosition = "right-[-450px]";
  submitted = false;
  data: any;

  newsletterForm = new FormGroup({
    email: new FormControl("", [Validators.required, Validators.email]),
  });

  @ViewChild("arrow") arrow!: ElementRef;
  @ViewChild("button") button!: ElementRef;
  @ViewChild("check") check!: ElementRef;
  @ViewChild("cross") cross!: ElementRef;

  get n(): { [key: string]: AbstractControl } {
    return this.newsletterForm.controls;
  }

  constructor(
    private footerService: FooterService,
    private sendData: SendDataService
  ) {}

  ngOnInit(): void {
    this.footerService.getFooterContent().subscribe((data: any) => {
      this.data = data.data[0].attributes;
      this.initializeFooterData();
      this.outputBackgroundColor = convertHexToRgba(
        this.inputBackgroundColor,
        this.enableTransparentBackgroundColor
      );
    });
  }

  initializeFooterData() {
    this.inputBackgroundColor = this.data.backgroundColor;
    this.enableTransparentBackgroundColor =
      this.data.enableTransparentBackground;
    this.title = this.data.title;
    this.titleColor = this.data.titleColor;
    this.textColor = this.data.textColor;
    this.copyrightText = this.data.copyrightText;
    this.newsletterTitle = this.data.newsletterTitle;
    this.newsletterTitleColor = this.data.newsletterTitleColor;
    this.inputPlaceholder = this.data.fieldPlaceholder;
    this.textPopup = this.data.textPopup;
    this.textColorPopup = this.data.textColorPopup;
    this.popupBorderColor = this.data.popupBorderColor;
    this.startColumn = this.data.startColumn.map((sc: any) => {
      return {
        text: sc.text,
        href: sc.link,
      };
    });
    this.centerColumn = this.data.centerColumn.map((cc: any) => {
      return {
        text: cc.text,
        href: cc.link,
      };
    });
    this.endColumn = this.data.endColumn.map((ec: any) => {
      return {
        text: ec.text,
        href: ec.link,
      };
    });
    this.legalItems = this.data.legalItems.map((ec: any) => {
      return {
        text: ec.text,
        href: ec.link,
      };
    });
    this.socialItems = this.data.socialMedias.map((si: any) => {
      return {
        icon:
          si.icon.data.attributes.alternativeText + si.icon.data.attributes.url,
        href: si.link,
      };
    });
  }

  onSubmitNewsletter() {
    this.submitted = true;

    if (this.newsletterForm.invalid) {
      this.handleInvalidForm();
    } else {
      this.sendNewsletterData();
    }
  }

  handleInvalidForm() {
    setTimeout(() => {
      this.arrow.nativeElement.style.transform = "translateX(30px)";
      setTimeout(() => {
        this.cross.nativeElement.style.transform = "translateX(0)";
        setTimeout(() => {
          this.setButtonStyle("rgba(185, 28, 27, 0.8)", "none");
          this.resetStyles();
        }, 100);
      }, 500);
    }, 100);
  }

  sendNewsletterData() {
    const formData = { email: this.newsletterForm.value.email };
    this.sendData.sendNewslettersData(formData).subscribe(
      (response) => {
        setTimeout(() => {
          this.arrow.nativeElement.style.transform = "translateX(30px)";
          setTimeout(() => {
            this.check.nativeElement.style.transform = "translateX(0)";
            setTimeout(() => {
              this.setButtonStyle("#F28705", "none");
              this.showSendingFormPopup();
              this.resetStyles();
              this.submitted = false;
              this.newsletterForm.reset();
              setTimeout(() => {
                this.hideSendingFormPopup();
              }, 3000);
            }, 100);
          }, 500);
        }, 100);
      },
      (error) => {
        console.error("Error sending data:", error);
        this.handleInvalidForm();
        if (error === "Email is already registered.") {
          this.newsletterForm.get("email")?.setErrors({ unique: true });
        }
      }
    );
  }

  setButtonStyle(backgroundColor: string, border: string) {
    this.button.nativeElement.style.backgroundColor = backgroundColor;
    this.button.nativeElement.style.border = border;
  }

  resetStyles() {
    setTimeout(() => {
      this.button.nativeElement.style.backgroundColor = "";
      this.button.nativeElement.style.border = "";
      this.arrow.nativeElement.style.transform = "";
      this.check.nativeElement.style.transform = "";
      this.cross.nativeElement.style.transform = "";
    }, 2000);
  }

  showSendingFormPopup() {
    this.sendingFormPopupPosition = "right-0";
    setTimeout(() => {
      this.hideSendingFormPopup();
    }, 30000);
  }

  hideSendingFormPopup() {
    this.sendingFormPopupPosition = "right-[-450px]";
  }
}
