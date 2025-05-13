import { Component } from "@angular/core";

@Component({
  selector: "app-contact",
  templateUrl: "./contact.component.html",
  styleUrls: ["./contact.component.scss"],
})
export class ContactComponent {
  titleText =
    'Contactez-nous <br/> <span class="text-[#52B6DE]">hello@cloud4dev.fr</span>';
  public isSubmitted = false;
  public contactInformations = {
    FIRSTNAME: "",
    LASTNAME: "",
    EMAIL: "",
    PHONE: "",
    COMPANY: "",
    REQUEST: "",
  };
  public checkboxChecked = false;
  emailPattern: RegExp = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/;

  constructor() {}

  firstnameEvent($event: any) {
    this.contactInformations.FIRSTNAME = $event;
  }

  lastNameEvent($event: any) {
    this.contactInformations.LASTNAME = $event;
  }

  emailEvent($event: any) {
    this.contactInformations.EMAIL = $event;
  }

  phoneEvent($event: any) {
    this.contactInformations.PHONE = $event;
  }

  companyEvent($event: any) {
    this.contactInformations.COMPANY = $event;
  }

  requestEvent($event: any) {
    this.contactInformations.REQUEST = $event;
  }

  checkboxEvent($event: any) {
    this.checkboxChecked = $event.checked;
  }

  onClick() {
    this.isSubmitted = true;
    if (this.isFormValid()) {
      // console.log('FORM_VALID');

      // Créez un objet pour stocker toutes les informations du formulaire
      const formData: { [key: string]: string } = {
        FIRSTNAME: this.contactInformations.FIRSTNAME,
        LASTNAME: this.contactInformations.LASTNAME,
        EMAIL: this.contactInformations.EMAIL,
        PHONE: this.contactInformations.PHONE,
        COMPANY: this.contactInformations.COMPANY,
        REQUEST: this.contactInformations.REQUEST,
      };

      // Utilisez une boucle for-in pour parcourir les propriétés de formData
      for (const key in formData) {
        if (Object.hasOwnProperty.call(formData, key)) {
          const value = formData[key];
          // console.log(`${key}: ${value}`);
        }
      }
    } else {
      // console.log('FORM_INVALID');
    }
  }

  isFormValid() {
    if (
      this.contactInformations.FIRSTNAME != "" &&
      this.contactInformations.LASTNAME != "" &&
      this.emailPattern.test(this.contactInformations.EMAIL) &&
      this.checkboxChecked
    ) {
      return true;
    }
    return false;
  }
}
