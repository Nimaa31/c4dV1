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
    | "file"
    | "sectionTitle"
    | "paragraph";
  isTwoFieldsInRow?: boolean;
  alreadyUsed?: boolean;
  isChecked?: boolean;
  text?: string;
  isFocused?: boolean;
  required?: boolean;
  validators?: any[];
  selectedFileName?: string;
}

@Component({
  selector: "lib-spontaneous-job-application-form",
  templateUrl: "./spontaneous-job-application-form.component.html",
  styleUrl: "./spontaneous-job-application-form.component.css",
})
export class SpontaneousJobApplicationFormComponent implements OnInit {
  @Input() inputFormBackgroundColor = "#fff";
  @Input() outputFormBackgroundColor!: string;
  @Input() enableTransparentForm = true;
  @Input() carouselTitle = "AUCUN POSTE CORRESPOND À VOTRE PROFILE ?";
  @Input() carouselTitleColor = "#fff";
  @Input() hasCarouselText = true;
  @Input() carouselText =
    "Nous cherchons toujours des talents passionnés.  N'hésitez pas à nous envoyer votre candidature spontanée <br><br> Notre équipe examine chaque candidature  et vous répondra sous 48 heures";
  @Input() carouselTextColor = "rgba(255,255,255,0.8)";
  @Input() hasCarouselButton!: boolean;
  @Input() carouselButtonText!: string;
  @Input() carouselButtonLink!: string;
  @Input() carouselImgSrc = "../../assets/candidature-spontanée-image.svg";
  @Input() formTextColor = "#fff";
  @Input() fieldsBackgroundColor = "#1E2634";
  @Input() fieldsBorderColor = "#fff";
  @Input() fieldsHilightedBorderColor = "#F28705";
  @Input() formButtonText = "ENVOYER";
  @Input() formSectionTitleColor = "#F28705";
  @Input() formParagraphColor = "#fff";
  @Input() checkboxBackgroundColor = "#F28705";
  @Input() checkboxBorderColor = "#fff";
  @Input() checkBoxTextColor = "#fff";
  @Input() textPopup =
    "Formulaire de contact envoyé avec succes, un expert vous contacteras dans un delai de 48h.";
  @Input() textColorPopup!: string;
  @Input() popupBorderColor!: string;
  @Input() formFields: FormField[] = [
    {
      name: "userInformationSection",
      text: "Vos coordonnées de contact",
      type: "sectionTitle",
    },
    {
      name: "lastName",
      placeholder: "Nom",
      type: "normal",
      isTwoFieldsInRow: true,
      alreadyUsed: false,
      required: true,
    },
    {
      name: "firstName",
      placeholder: "Prénom",
      type: "normal",
      isTwoFieldsInRow: true,
      alreadyUsed: false,
      required: true,
    },
    {
      name: "email",
      placeholder: "Email",
      type: "email",
      isTwoFieldsInRow: true,
      alreadyUsed: false,
      required: true,
    },
    {
      name: "phone",
      placeholder: "Numéro de téléphone",
      type: "phone",
      isTwoFieldsInRow: true,
      alreadyUsed: false,
      required: true,
    },
    {
      name: "profileInformationSection",
      text: "Votre profil professionnel",
      type: "sectionTitle",
    },
    {
      name: "desiredJob",
      placeholder: "Post souhaité",
      type: "normal",
      required: true,
      isTwoFieldsInRow: false,
      alreadyUsed: false,
    },
    {
      name: "profileLink",
      placeholder: "Lien de votre profil professionnel",
      type: "normal",
      required: true,
      isTwoFieldsInRow: false,
      alreadyUsed: false,
    },
    {
      name: "cv",
      placeholder: "Votre CV",
      type: "file",
      required: true,
      selectedFileName: "",
    },
    {
      name: "motivationSection",
      text: "Lettre de motivation",
      type: "sectionTitle",
    },
    {
      name: "motivationText",
      placeholder: "Message",
      type: "textarea",
      required: true,
      isFocused: false,
    },
    {
      name: "sendCommunication",
      text: "J'accepte de recevoir d'autres communications de CLOUD4DEV",
      type: "checkbox",
      required: true,
    },
    {
      name: "c4dEngagementText",
      text: "Cloud4dev s'engage à protéger et à respecter votre vie privée. Nous n'utiliserons vos données personnelles que pour vous fournir les services demandés. Ainsi, votre candidature sera conservée pour une durée d’un an. Après ce délai votre candidature seras automatiquement supprimé de nos système.",
      type: "paragraph",
    },
  ];
  subtitleWidth!: string;
  sendingFormPopupPosition = "right-[-450px]";
  fieldsFocusClass!: string;
  submitted = false;
  selectedFileName: string | null = null;
  uploadedFiles: { [key: string]: File } = {};
  data: any;

  candidatureForm!: FormGroup;

  @ViewChild("element") element!: ElementRef;

  get n(): { [key: string]: AbstractControl } {
    return this.candidatureForm.controls;
  }

  constructor(private sendData: SendDataService) {}

  ngOnInit(): void {
    // this.loadCandidatureData();
    // this.fieldsFocusClass = `outline-offset-0 outline-none focus:outline-1 focus:outline-[${this.fieldsBorderColor}]`;
    this.initializeForm();
    this.outputFormBackgroundColor = convertHexToRgba(
      this.inputFormBackgroundColor,
      this.enableTransparentForm
    );
  }

  loadCandidatureData() {
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
    this.fieldsBorderColor = this.data.FieldsBorderColor;
    this.fieldsHilightedBorderColor = this.data.FieldsHilightedBorderColor;
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
        selectedFileName: field.selectedFileName,
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

    this.candidatureForm = new FormGroup(formGroup);
  }

  formatPhoneNumber(event: Event, fieldName: string) {
    const input = event.target as HTMLInputElement;
    let formattedNumber = input.value.replace(/\D/g, "").slice(0, 10);
    if (formattedNumber.length > 0) {
      formattedNumber = formattedNumber.match(/.{1,2}/g)!.join(" ");
    }
    input.value = formattedNumber;
    this.candidatureForm.controls[fieldName].setValue(formattedNumber);
  }

  checkboxRequiredValidator(): ValidatorFn {
    return (control: AbstractControl): ValidationErrors | null => {
      return control.value === true ? null : { required: true };
    };
  }

  // onSubmitCandidatureForm() {
  //   this.submitted = true;
  //   const formData = this.candidatureForm.value;

  //   const requestData = {
  //     job_offer: "candidature_spontannée",
  //     ...formData,
  //   };

  //   if (this.candidatureForm.valid) {
  //     this.sendData
  //     .sendUnsolicitedApplicationData(requestData)
  //       .subscribe({
  //         next: () => {
  //           this.showSendingFormPopup();
  //           this.submitted = false;
  //           this.candidatureForm.reset();

  //           const field = this.formFields.find((f) => f.type === "file");
  //           if (field) {
  //             field.selectedFileName = "";
  //           }

  //           setTimeout(() => {
  //             this.hideSendingFormPopup();
  //           }, 3000);
  //         },
  //         error: () => {
  //           this.submitted = false;
  //           this.textPopup =
  //             "Echec de l'envoie du formulaire veuillez réessayer utlérieurement";
  //           this.showSendingFormPopup();
  //           setTimeout(() => {
  //             this.hideSendingFormPopup();
  //           }, 3000);
  //         },
  //       });
  //   }
  // }
  // onSubmitCandidatureForm() {
  //   this.submitted = true;
  //   const formData = this.candidatureForm.value;
  
  //   const data = {
  //     Nom: formData.lastName,
  //     Prenom: formData.firstName,
  //     email: formData.email,
  //     numero: formData.phone,
  //     post: formData.desiredJob,
  //     lien: formData.profileLink,
  //     message: formData.motivationText,
  //   };
  
  //   const file = this.uploadedFiles['cv'];
  
  //   if (this.candidatureForm.valid) {
  //     this.sendData.sendUnsolicitedApplicationData({ data }, file).subscribe({
  //       next: () => {
  //         this.showSendingFormPopup();
  //         this.submitted = false;
  //         this.candidatureForm.reset();
  
  //         const field = this.formFields.find((f) => f.type === "file");
  //         if (field) {
  //           field.selectedFileName = "";
  //         }
  
  //         setTimeout(() => {
  //           this.hideSendingFormPopup();
  //         }, 3000);
  //       },
  //       error: () => {
  //         this.submitted = false;
  //         this.textPopup =
  //           "Échec de l'envoi du formulaire. Veuillez réessayer ultérieurement.";
  //         this.showSendingFormPopup();
  //         setTimeout(() => {
  //           this.hideSendingFormPopup();
  //         }, 3000);
  //       },
  //     });
  //   }
  // }
  
  onSubmitCandidatureForm() {
    // 🛡️ Anti double clic
    if (this.submitted) return;
    this.submitted = true;
  
    const formData = this.candidatureForm.value;
  
    // ✅ Données texte formatées selon les champs Strapi
    const data = {
      Nom: formData.lastName,
      Prenom: formData.firstName,
      email: formData.email,
      numero: formData.phone,
      post: formData.desiredJob,
      lien: formData.profileLink,
      message: formData.motivationText,
    };
  
    const file = this.uploadedFiles['cv'];
  
    // 🚨 Vérifie que le fichier est bien sélectionné
    if (!file) {
      this.submitted = false;
      this.textPopup = "Veuillez ajouter un fichier CV avant d'envoyer le formulaire.";
      this.showSendingFormPopup();
      setTimeout(() => this.hideSendingFormPopup(), 3000);
      return;
    }
  
    if (this.candidatureForm.valid) {
      this.sendData.sendUnsolicitedApplicationData({ data }, file).subscribe({
        next: (res) => {
          console.log("✅ Formulaire envoyé avec succès :", res);
  
          this.textPopup = "Votre candidature a bien été envoyée.";
          this.showSendingFormPopup();
          this.submitted = false;
          this.candidatureForm.reset();
  
          const field = this.formFields.find((f) => f.type === "file");
          if (field) field.selectedFileName = "";
  
          setTimeout(() => this.hideSendingFormPopup(), 3000);
        },
        error: (err) => {
          console.error("❌ Erreur d'envoi :", err);
          this.submitted = false;
          this.textPopup =
            "Échec de l'envoi du formulaire. Veuillez réessayer ultérieurement.";
          this.showSendingFormPopup();
          setTimeout(() => this.hideSendingFormPopup(), 3000);
        },
      });
    } else {
      this.submitted = false;
      this.textPopup = "Veuillez remplir tous les champs obligatoires.";
      this.showSendingFormPopup();
      setTimeout(() => this.hideSendingFormPopup(), 3000);
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

  // uploadFile(event: Event, fieldName: string) {
  //   const input = event.target as HTMLInputElement;
  //   if (input.files && input.files.length > 0) {
  //     const file = input.files[0];

  //     const field = this.formFields.find((f) => f.name === fieldName);
  //     if (field) {
  //       field.selectedFileName = file.name;
  //       this.uploadedFiles[fieldName] = file;

  //       const patchFile: { [key: string]: any } = {};
  //       patchFile[fieldName] = file.name;
  //       this.candidatureForm.patchValue(patchFile);
  //     }
  //   } else {
  //     const field = this.formFields.find((f) => f.name === fieldName);
  //     if (field) {
  //       field.selectedFileName = "";
  //     }
  //   }
  // }
  readonly MAX_FILE_SIZE_MB = 5; // Pour 5 Mo si besoin

  uploadFile(event: Event, fieldName: string) {
    const input = event.target as HTMLInputElement;
  
    if (input.files && input.files.length > 0) {
      const file = input.files[0];
      const fileSizeMB = file.size / (1024 * 1024); // en Mo
  
      if (fileSizeMB > this.MAX_FILE_SIZE_MB) {
        this.textPopup = `❌ Taille du fichier trop grande (max : ${this.MAX_FILE_SIZE_MB} Mo)`;
        this.showSendingFormPopup();
        setTimeout(() => this.hideSendingFormPopup(), 3000);
        return;
      }
  
      // Sinon : accepte le fichier
      const field = this.formFields.find((f) => f.name === fieldName);
      if (field) {
        field.selectedFileName = file.name;
        this.uploadedFiles[fieldName] = file;
  
        const patchFile: { [key: string]: any } = {};
        patchFile[fieldName] = file.name;
        this.candidatureForm.patchValue(patchFile);
      }
    } else {
      const field = this.formFields.find((f) => f.name === fieldName);
      if (field) {
        field.selectedFileName = "";
      }
    }
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
