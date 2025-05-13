import { Component, ElementRef, Input, OnInit, ViewChild } from "@angular/core";
import {
  AbstractControl,
  FormControl,
  FormGroup,
  ValidationErrors,
  ValidatorFn,
  Validators,
} from "@angular/forms";
import { convertHexToRgba } from "../../../../../src/app/shared/utils/colorConvertor.util";
import { SendDataService } from "../../../../../src/app/shared/services/send-data.service";

interface FormField {
  name: string;
  placeholder?: string;
  type:
    | "normal"
    | "email"
    | "phone"
    | "textarea"
    | "checkbox"
    | "sectionTitle"
    | "paragraph";
  isTwoFieldsInRow?: boolean;
  alreadyUsed?: boolean;
  isChecked?: boolean;
  text?: string;
  isFocused?: boolean;
  required?: boolean;
  validators?: any[];
}

@Component({
  selector: "lib-contact",
  templateUrl: "./contact.component.html",
  styleUrls: ["./contact.component.css"],
})
export class ContactComponent implements OnInit {
  // @Input() inputFormBackgroundColor = "#fff";
  // @Input() outputFormBackgroundColor!: string;
  // @Input() enableTransparentForm = true;
  // @Input() carouselTitle = "Une Question ?";
  // @Input() carouselTitleColor = "#fff";
  // @Input() hasCarouselText = true;
  // @Input() carouselText!: string;
  // @Input() carouselTextColor = "#fff";
  // @Input() hasCarouselButton!: boolean;
  // @Input() carouselButtonText!: string;
  // @Input() carouselButtonLink!: string;
  // @Input() carouselImgSrc = "../../assets/image-formulaire-contact.svg";
  // @Input() formTextColor = "#fff";
  // @Input() fieldsBackgroundColor = "#1E2634";
  // @Input() formButtonText = "ENVOYER";
  // @Input() formSectionTitleColor = "#F28705";
  // @Input() formParagraphColor = "#fff";
  // @Input() checkboxBackgroundColor = "#F28705";
  // @Input() checkboxBorderColor = "#fff";
  // @Input() checkBoxTextColor = "#fff";
  // @Input() formFields: FormField[] = [
  //   {
  //     name: "userInformationSection",
  //     text: "Vos coordonnées de contact",
  //     type: "sectionTitle",
  //   },
  //   {
  //     name: "lastName",
  //     placeholder: "Nom",
  //     type: "normal",
  //     isTwoFieldsInRow: true,
  //     alreadyUsed: false,
  //     required: true,
  //   },
  //   {
  //     name: "firstName",
  //     placeholder: "Prénom",
  //     type: "normal",
  //     isTwoFieldsInRow: true,
  //     alreadyUsed: false,
  //     required: true,
  //   },
  //   {
  //     name: "email",
  //     placeholder: "Email",
  //     type: "email",
  //     isTwoFieldsInRow: true,
  //     alreadyUsed: false,
  //     required: true,
  //   },
  //   {
  //     name: "phone",
  //     placeholder: "Numéro de téléphone",
  //     type: "phone",
  //     isTwoFieldsInRow: true,
  //     alreadyUsed: false,
  //     required: true,
  //   },
  //   {
  //     name: "needingSection",
  //     text: "Décrivez votre besoin",
  //     type: "sectionTitle",
  //   },
  //   {
  //     name: "message",
  //     placeholder: "Message",
  //     type: "textarea",
  //     required: true,
  //   },
  //   {
  //     name: "sendCommunication",
  //     text: "J'accepte de recevoir d'autres communications de CLOUD4DEV",
  //     type: "checkbox",
  //     required: true,
  //   },
  //   {
  //     name: "c4dEngagementText",
  //     text: "Cloud4dev s'engage à protéger et à respecter votre vie privée. Nous n'utiliserons vos données personnelles que pour vous fournir les services demandés. Vous pouvez vous désabonner à tout moment.",
  //     type: "paragraph",
  //   },
  // ];

  @Input() inputFormBackgroundColor!: string;
  @Input() outputFormBackgroundColor!: string;
  @Input() enableTransparentForm!: boolean;
  @Input() carouselTitle!: string;
  @Input() carouselTitleColor!: string;
  @Input() hasCarouselText!: boolean;
  @Input() carouselText!: string;
  @Input() carouselTextColor!: boolean;
  @Input() hasCarouselButton!: boolean;
  @Input() carouselButtonText!: string;
  @Input() carouselButtonLink!: string;
  @Input() carouselImgSrc!: string;
  @Input() formTextColor!: string;
  @Input() fieldsBackgroundColor!: string;
  @Input() formButtonText!: string;
  @Input() formSectionTitleColor!: string;
  @Input() formParagraphColor!: string;
  @Input() checkboxBackgroundColor!: string;
  @Input() checkboxBorderColor!: string;
  @Input() checkBoxTextColor!: string;
  @Input() textPopup!: string;
  @Input() textColorPopup!: string;
  @Input() popupBorderColor!: string;
  @Input() formFields: FormField[] = [];
  subtitleWidth!: string;
  sendingFormPopupPosition = "right-[-450px]";
  submitted = false;
  data: any;

  contactForm!: FormGroup;

  @ViewChild("element") element!: ElementRef;

  get n(): { [key: string]: AbstractControl } {
    return this.contactForm.controls;
  }

  constructor(private sendData: SendDataService) {}

  ngOnInit(): void {
    this.loadContactData();
    this.initializeForm();
    this.outputFormBackgroundColor = convertHexToRgba(
      this.inputFormBackgroundColor,
      this.enableTransparentForm
    );
  }

  loadContactData() {
    this.inputFormBackgroundColor = this.data.FormBackgroundColor;
    this.enableTransparentForm = this.data.EnableTransparentForm;
    this.carouselTitle = this.data.CarouselTitle;
    this.carouselTitleColor = this.data.CarouselTitleColor;
    this.hasCarouselText = this.data.HasCarouselText;
    this.carouselText = this.processText(this.data.CarouselText);
    this.carouselTextColor = this.data.CarouselTextColor;
    this.hasCarouselButton = this.data.HasCarouselButton;
    this.carouselButtonText = this.data.CarouselButtonText;
    this.carouselButtonLink = this.data.CarouselButtonLink;
    this.carouselImgSrc =
      this.data.CarouselImgSrc.alternativeText + this.data.CarouselImgSrc.url;
    this.formTextColor = this.data.FormTextColor;
    this.fieldsBackgroundColor = this.data.FieldsBackgroundColor;
    this.formButtonText = this.data.FormButtonText;
    this.formSectionTitleColor = this.data.FormSectionTitleColor;
    this.formParagraphColor = this.data.FormParagraphColor;
    this.checkboxBackgroundColor = this.data.CheckboxBackgroundColor;
    this.checkboxBorderColor = this.data.CheckboxBorderColor;
    this.checkBoxTextColor = this.data.CheckBoxTextColor;
    this.textPopup = this.data.TextPopup;
    this.textColorPopup = this.data.TextColorPopup;
    this.popupBorderColor = this.data.PopupBorderColor;
    this.formFields = this.data.FormFields.map((field: any) => {
      return {
        name: field.name,
        placeholder: field.placeholder,
        type: field.type,
        isTwoFieldsInRow: field.isTwoFieldsInRow,
        alreadyUsed: field.alreadyUsed,
        isChecked: field.isChecked,
        text: field.text,
        isFocused: field.isFocused,
        required: field.isRequired,
        validators: field.regexPattern,
      };
    });
  }

  initializeForm() {
    const formGroup: { [key: string]: FormControl } = {};

    this.formFields.forEach((field, index) => {
      const validators = field.validators || [];
      if (field.required) {
        validators.push(Validators.required);
      }

      if (field.type === "email") {
        validators.push(Validators.email);
      }

      if (field.type === "phone") {
        validators.push(Validators.pattern(/^(\d{2} ){4}\d{2}$/));
      }

      if (field.type === "checkbox" && field.required) {
        validators.push(this.checkboxRequiredValidator());
      }

      if (field.type !== "sectionTitle" && field.type !== "paragraph") {
        formGroup[field.name] = new FormControl("", validators);

        if (
          field.isTwoFieldsInRow &&
          !field.alreadyUsed &&
          this.formFields[index + 1]?.isTwoFieldsInRow
        ) {
          this.formFields[index + 1].alreadyUsed = true;
        }
      }
    });

    this.contactForm = new FormGroup(formGroup);
  }

  formatPhoneNumber(event: Event, fieldName: string) {
    const input = event.target as HTMLInputElement;
    let formattedNumber = input.value.replace(/\D/g, "").slice(0, 10);
    if (formattedNumber.length > 0) {
      formattedNumber = formattedNumber.match(/.{1,2}/g)!.join(" ");
    }
    input.value = formattedNumber;
    this.contactForm.controls[fieldName].setValue(formattedNumber);
  }

  checkboxRequiredValidator(): ValidatorFn {
    return (control: AbstractControl): ValidationErrors | null => {
      return control.value === true ? null : { required: true };
    };
  }

  onSubmitContactForm() {
    this.submitted = true;
    const formData = this.contactForm.value;

    if (this.contactForm.valid) {
      this.sendData.sendContactData(formData).subscribe({
        next: (response) => {
          console.log("Contact data sent successfully", response);
          this.showSendingFormPopup();
          this.submitted = false;
          this.contactForm.reset();
          setTimeout(() => {
            this.hideSendingFormPopup();
          }, 3000);
        },
        error: (error) => {
          console.log("There was an error sending the contact data", error);
          this.submitted = false;
          this.textPopup =
            "Echec de l'envoie du formulaire veuillez réessayer utlérieurement";
          this.showSendingFormPopup();
          setTimeout(() => {
            this.hideSendingFormPopup();
          }, 3000);
        },
      });
      console.log("Form submitted successfully", formData);
    }
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

  processText(text: string): string {
    const regex = /<tinted>(.*?)<\/tinted>|<linear>(.*?)<\/linear>|(\n)/gs;
    return text.replace(regex, (match, tinted, linear, newline) => {
      if (tinted) {
        return `<span class="span1">${tinted}</span>`;
      }
      if (linear) {
        return `<span class="linear">${linear}</span>`;
      }
      if (newline) {
        return "<br>";
      }
      return match;
    });
  }
}
