import { Component } from "@angular/core";
// import { CarouselItemComponent } from "projects/c4d-ui-components/src/public-api";
// import { TitleComponent } from "projects/c4d-ui-components/src/public-api";
// import { ButtonComponent } from "projects/c4d-ui-components/src/public-api";
// import { FooterV2Component } from "projects/c4d-ui-components/src/lib/footer-v2/footer-v2.component";
// import { MenuV2Component } from "projects/c4d-ui-components/src/lib/menu-v2/menu-v2.component";
// import { MenuComponent } from "projects/c4d-ui-components/src/lib/menu/menu.component";
// import { BreadcrumbV2Component } from "projects/c4d-ui-components/src/lib/breadcrumb-v2/breadcrumb-v2.component";
// import { CarouselItemV2Component } from "projects/c4d-ui-components/src/lib/carousel-item-v2/carousel-item-v2.component";
// import { AnimatedCardsBlocComponent } from "projects/c4d-ui-components/src/lib/animated-cards-bloc/animated-cards-bloc.component";
// import { BoxTextComponent } from "projects/c4d-ui-components/src/lib/box-text/box-text.component";
// import { TabsComponent } from "projects/c4d-ui-components/src/lib/tabs/tabs.component";

// import { TextComponent } from "projects/c4d-ui-components/src/lib/text/text.component";
// import { ImageComponent } from "projects/c4d-ui-components/src/lib/image/image.component";

// import { VerticalSpaceComponent } from "projects/c4d-ui-components/src/lib/vertical-space/vertical-space.component";
// import { ContactFormComponent } from "projects/c4d-ui-components/src/lib/contact-form/contact-form.component";
// import { ItemCardsComponent } from "projects/c4d-ui-components/src/lib/item-cards/item-cards.component";
// import { AnimatedCardsBlocV2Component } from "projects/c4d-ui-components/src/lib/animated-cards-bloc-v2/animated-cards-bloc-v2.component";

// import { NewslettersComponent } from "projects/c4d-ui-components/src/lib/newsletters/newsletters.component";
// import { CarouselType2Component } from "projects/c4d-ui-components/src/lib/carousel-type2/carousel-type2.component";
// import { CarouselType3Component } from "projects/c4d-ui-components/src/lib/carousel-type3/carousel-type3.component";
// import { CandidatureFormComponent } from "projects/c4d-ui-components/src/lib/candidature-form/candidature-form.component";
// import { StaticHeaderComponent } from "projects/c4d-ui-components/src/lib/static-header/static-header.component";
import { TestComponentComponent } from "../../../projects/c4d-ui-components/src/lib/test-component/test-component.component";
import { AccordionsComponent } from "../../../projects/c4d-ui-components/src/lib/accordions/accordions.component";
import { ParagraphComponent } from "../../../projects/c4d-ui-components/src/lib/paragraph/paragraph.component";
import { CarouselTypeLinearComponent } from "../../../projects/c4d-ui-components/src/lib/carousel-type-linear/carousel-type-linear.component";
import { VerticalSpaceComponent } from "../../../projects/c4d-ui-components/src/lib/vertical-space/vertical-space.component";
import { CarouselTypeParagraphIconComponent } from "../../../projects/c4d-ui-components/src/lib/carousel-type-paragraph-icon/carousel-type-paragraph-icon.component";
import { CarouselSlideCardsComponent } from "../../../projects/c4d-ui-components/src/lib/carousel-slide-cards/carousel-slide-cards.component";
import { CarouselSlideProfileCardsComponent } from "../../../projects/c4d-ui-components/src/lib/carousel-slide-profile-cards/carousel-slide-profile-cards.component";
import { ContactComponent } from "../../../projects/c4d-ui-components/src/lib/contact/contact.component";
import { CarouselSlideJobOffersComponent } from "../../../projects/c4d-ui-components/src/lib/carousel-slide-job-offers/carousel-slide-job-offers.component";
import { SpontaneousJobApplicationFormComponent } from "../../../projects/c4d-ui-components/src/lib/spontaneous-job-application-form/spontaneous-job-application-form.component";



export class Dictionary {
  getComposantsDynamiques(data: any): any[] {
    const composants: any[] = [];

    for (const dzItem of data.dz) {
      const componentName = dzItem.__component;
      switch (componentName) {
        // case "c4d-components.footer":
        //   composants.push({
        //         component: TestComponentComponent,
        //         name: componentName,
        //         data: {
        //           BackgroundColor: dzItem.backgroundColor,
        //         },
        //   });
        //   console.log("test-component:", dzItem.backgroundColor);
        //   break;

        case "c4d-components.accordions":
          composants.push({
            component: AccordionsComponent,
            name: componentName,
            data: {
              Title: dzItem.title,
              TitleColor: dzItem.titleColor,
              AccordionTitleColor: dzItem.accordionTitleColor,
              AccordionContentColor: dzItem.accordionContentColor,
              ImgSrc: dzItem.image.data.attributes,
              AccordionsItems: dzItem.accordionsItems,
            },
          });
          break;

        case "c4d-components.paragraph":
          composants.push({
            component: ParagraphComponent,
            name: componentName,
            data: {
              HasTitle: dzItem.hasTitle,
              Title: dzItem.title,
              TitleColor: dzItem.titleColor,
              TintedColor: dzItem.tintedColor,
              HasText: dzItem.hasText,
              Text: dzItem.text,
              TextColor: dzItem.textColor,
              HasButton: dzItem.hasButton,
              TextButton: dzItem.textButton,
              LinkButton: dzItem.linkButton,
            },
          });
          break;

        case "c4d-components.carousel-type-linear":
          composants.push({
            component: CarouselTypeLinearComponent,
            name: componentName,
            data: {
              StartColorLinearGradient: dzItem.startColorLinearGradient,
              EndColorLinearGradient: dzItem.endColorLinearGradient,
              Title: dzItem.title,
              TitleColor: dzItem.titleColor,
              HasSubtitle: dzItem.hasSubtitle,
              Subtitle: dzItem.subtitle,
              SubtitleColor: dzItem.subtitleColor,
              HasButton: dzItem.hasButton,
              ButtonText: dzItem.buttonText,
              ButtonLink: dzItem.buttonLink,
              ImgSrc: dzItem.image.data.attributes,
              EnableLinearGradient: dzItem.enableLinearGradient,
            },
          });
          // console.log("dans le carousel-type-linear" + data);
          break;

        case "c4d-components.carousel-paragraph-icons":
          composants.push({
            component: CarouselTypeParagraphIconComponent,
            name: componentName,
            data: {
              IsReversedDirection: dzItem.reverseDirection,
              Title: dzItem.title,
              TitleColor: dzItem.titleColor,
              HasText: dzItem.hasText,
              Text: dzItem.text,
              TextColor: dzItem.textColor,
              HasButton: dzItem.hasButton,
              ButtonText: dzItem.buttonText,
              ButtonLink: dzItem.buttonLink,
              ImgSrc: dzItem.image.data.attributes,
              Icons: dzItem.icons,
            },
          });
          // console.log("dans le carousel-type-linear" + data);
          break;

        case "c4d-components.carousel-slide":
          composants.push({
            component: CarouselSlideCardsComponent,
            name: componentName,
            data: {
              Title: dzItem.title,
              TitleColor: dzItem.titleColor,
              CardBackgroundColor: dzItem.cardBackgroundColor,
              EnableTransparentCard: dzItem.enableTransparentCard,
              DescriptionColor: dzItem.cardDescriptionColor,
              Cards: dzItem.cards,
            },
          });
          break;

        case "c4d-components.slider-profile-cards":
          composants.push({
            component: CarouselSlideProfileCardsComponent,
            name: componentName,
            data: {
              Title: dzItem.title,
              TitleColor: dzItem.titleColor,
              TintedColor: dzItem.tintedColor,
              CardBackgroundColor: dzItem.cardBackgroundColor,
              EnableTransparentCard: dzItem.enableTransparentCard,
              CardNameColor: dzItem.cardNameColor,
              CardJobColor: dzItem.cardJobColor,
              CardDescriptionColor: dzItem.cardDescriptionColor,
              HasButton: dzItem.hasButton,
              EnableLinearGradient: dzItem.enableLinearGradient,
              StartColorLinearGradient: dzItem.startColorLinearGradient,
              EndColorLinearGradient: dzItem.endColorLinearGradient,
              ButtonText: dzItem.buttonText,
              ButtonLink: dzItem.buttonLink,
              Cards: dzItem.profileCards,
            },
          });
          break;

        case "c4d-components.contact-form":
          composants.push({
            component: ContactComponent,
            name: componentName,
            data: {
              FormBackgroundColor: dzItem.formBackgroundColor,
              EnableTransparentForm: dzItem.enableTransparentForm,
              CarouselTitle: dzItem.carouselTitle,
              CarouselTitleColor: dzItem.carouselTitleColor,
              HasCarouselText: dzItem.hasCarouselText,
              CarouselText: dzItem.carouselText,
              CarouselTextColor: dzItem.carouselTextColor,
              HasCarouselButton: dzItem.hasCarouselButton,
              CarouselButtonText: dzItem.carouselButtonText,
              CarouselButtonLink: dzItem.carouselButtonLink,
              CarouselImgSrc: dzItem.carouselImgSrc.data.attributes,
              FormTextColor: dzItem.formTextColor,
              FieldsBackgroundColor: dzItem.fieldsBackgroundColor,
              FormButtonText: dzItem.formButtonText,
              FormSectionTitleColor: dzItem.formSectionTitleColor,
              FormParagraphColor: dzItem.formParagraphColor,
              CheckboxBackgroundColor: dzItem.checkboxBackgroundColor,
              CheckboxBorderColor: dzItem.checkboxBorderColor,
              CheckBoxTextColor: dzItem.checkBoxTextColor,
              TextPopup: dzItem.textPopup,
              TextColorPopup: dzItem.textColorPopup,
              PopupBorderColor: dzItem.popupBorderColor,
              FormFields: dzItem.formFields,
            },
          });
          break;

        case "c4d-components.vertical-space":
          composants.push({
            component: VerticalSpaceComponent,
            name: componentName,
            data: {
              EnterNumber: dzItem.spacing,
            },
          });
          break;

          case "c4d-components.carousel-slide-job-offers":
            composants.push({
              component: CarouselSlideJobOffersComponent,
              name: componentName,
              data: {
                inputBackgroundColor: dzItem.inputBackgroundColor,
                cardOpacity: dzItem.cardOpacity,
                title: dzItem.title,
                titleColor: dzItem.titleColor,
                jobTitleColor: dzItem.jobTitleColor,
                jobDescriptionColor: dzItem.jobDescriptionColor,
                jobHighlightedColor: dzItem.jobHighlightedColor,
                jobBadgeColor: dzItem.jobBadgeColor,
                jobBadgeBackgroundColor: dzItem.jobBadgeBackgroundColor,
                cards: dzItem.cards, 
              },
            });
            break;
          
          case "c4d-components.spontaneous-job-application-form":
            composants.push({
              component: SpontaneousJobApplicationFormComponent,
              name: componentName,
              data: {
                inputFormBackgroundColor: dzItem.inputFormBackgroundColor,
                outputFormBackgroundColor: dzItem.outputFormBackgroundColor,
                enableTransparentForm: dzItem.enableTransparentForm,
                carouselTitle: dzItem.carouselTitle,
                carouselTitleColor: dzItem.carouselTitleColor,
                hasCarouselText: dzItem.hasCarouselText,
                carouselText: dzItem.carouselText,
                carouselTextColor: dzItem.carouselTextColor,
                hasCarouselButton: dzItem.hasCarouselButton,
                carouselButtonText: dzItem.carouselButtonText,
                carouselButtonLink: dzItem.carouselButtonLink,
                carouselImgSrc: dzItem.carouselImgSrc?.data?.attributes, 
                formTextColor: dzItem.formTextColor,
                fieldsBackgroundColor: dzItem.fieldsBackgroundColor,
                fieldsBorderColor: dzItem.fieldsBorderColor,
                fieldsHilightedBorderColor: dzItem.fieldsHilightedBorderColor,
                formButtonText: dzItem.formButtonText,
                formSectionTitleColor: dzItem.formSectionTitleColor,
                formParagraphColor: dzItem.formParagraphColor,
                checkboxBackgroundColor: dzItem.checkboxBackgroundColor,
                checkboxBorderColor: dzItem.checkboxBorderColor,
                checkBoxTextColor: dzItem.checkBoxTextColor,
                textPopup: dzItem.textPopup,
                textColorPopup: dzItem.textColorPopup,
                popupBorderColor: dzItem.popupBorderColor,
                formFields: dzItem.formFields, 
    },
  });
  break;

        // case "c4-d-components.title":
        //   composants.push({
        //     component: TitleComponent,
        //     name: componentName,

        //     data: {
        //       Text: dzItem.Text,
        //       Color: dzItem.Color,
        //       Type: dzItem.Type,
        //       AdditionalClasses: dzItem.AdditionalClasses,
        //     },
        //   });
        //   break;

        //     case 'c4-d-components.button':
        //       composants.push({
        //         component: ButtonComponent,
        //         name: componentName,
        //         data: {},
        //       });
        //       break;

        // case 'c4-d-components.animated-cards-bloc':
        //       composants.push({
        //         component: AnimatedCardsBlocComponent,
        //         name: componentName,
        //         data: {
        //           backgroundColor: dzItem.backgroundColor,
        //           card:dzItem.card
        //         },
        //       });
        //       console.log('dans la dz ' + dzItem.backgroundColor)
        //       break;

        // case "c4-d-components.footer-v-2":
        //   composants.push({
        //     component: FooterV2Component,
        //     name: componentName,
        //     data: {

        //       BackgroundColor: dzItem.couleur_fond,
        //       SeparationBarColor: dzItem.couleur_barre_separation,
        //       LogoSrc: dzItem.logo_image,
        //       TextColor: dzItem.couleur_titre,
        //       Text: dzItem.titre,
        //       BorderColor: dzItem.couleur_bordure,
        //       ItemsTextColor: dzItem.couleur_text,
        //       SocialMedias: dzItem.reseaux_sociaux,
        //       StartPanel: dzItem.panneau_text_gauche,
        //       CenterPanel: dzItem.panneau_text_centre,
        //       EndPanel: dzItem.panneau_text_droite,
        //     },
        //   });

        //   break;

        //     case 'c4-d-components.breadcrumb-v-2':
        //       composants.push({
        //         component: BreadcrumbV2Component,
        //         name: componentName,
        //         data: {
        //           ShowBreadcrumb: dzItem.showBreadcrumb,
        //           TagPageColor: dzItem.tagPageColor,
        //           TagPageColorActived: dzItem.tagPageColorActived,
        //           BulletColor: dzItem.bulletColor,
        //           BulletColorActived: dzItem.bulletColorActived,
        //           Items: dzItem.items,
        //         },
        //       });
        //       break;

        // case "c4-d-components.animated-cards-bloc":
        //   composants.push({
        //     component: AnimatedCardsBlocComponent,
        //     name: componentName,
        //     data: {
        //       BackgroundColor: dzItem.backgroundColor,
        //       HoverBackgroundColor: dzItem.couleur_fond_card_survol,
        //       card: dzItem.card,
        //     },
        //   });

        //   break;

        // case "c4-d-components.carte-article":
        //   composants.push({
        //     component: ItemCardsComponent,
        //     name: componentName,
        //     data: {
        //       BackgroundColor: dzItem.backgroundColor,
        //       HoverBackgroundColor: dzItem.couleur_fond_card_survol,
        //     },
        //   });

        //   break;

        // case "c4-d-components.animated-cards-blocs-v2":
        //   composants.push({
        //     component: AnimatedCardsBlocV2Component,
        //     name: componentName,
        //     data: {
        //       BackgroundColor: dzItem.backgroundColor,
        //       hoverBackgroundColor: dzItem.couleur_card_survol,
        //       backgroundColorcard: dzItem.couleur_card,
        //       TitleColor: dzItem.couleur_titre,
        //       SubtitleColor: dzItem.couleur_sous_titre,
        //       TextColor: dzItem.couleur_texte,
        //       ShowButton: dzItem.afficher_bouton,
        //       ButtonTextColor: dzItem.couleur_text_bouton,
        //       ButtonType: dzItem.type_bouton,
        //       ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //       ButtonHoverBackgroundColor: dzItem.couleur_fond_bouton_survol,
        //       ButtonHoverTextColor: dzItem.couleur_text_bouton_survol,
        //       ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //       ButtonText: dzItem.text_bouton,
        //       Cards: dzItem.cards,
        //     },
        //   });
        //   break;

        // case "c4-d-components.contact-form":
        //   composants.push({
        //     component: ContactFormComponent,
        //     name: componentName,
        //     data: {
        //       BackgroundColor: dzItem.couleur_fond,
        //       FormBackgroundColor: dzItem.couleur_fond_formulaire,
        //       NameLabel: dzItem.nom_label,
        //       FirstNameLabel: dzItem.prenom_label,
        //       EmailLabel: dzItem.email_label,
        //       PhoneLabel: dzItem.telephone_label,
        //       RoleLabel: dzItem.fonction_label,
        //       CompanyLabel: dzItem.entreprise_label,
        //       SubjectLabel: dzItem.sujet_label,
        //       MessageLabel: dzItem.message_label,
        //       SelectItems: dzItem.sujet_options,
        //       HasBorderFormActive: dzItem.activer_bordure_formulaire,
        //       FormBorderColor: dzItem.couleur_bordure_formulaire,
        //       FieldsErrorColor: dzItem.couleur_erreur_champs,
        //       FieldsLabelColor: dzItem.couleur_etiquettes_champs,
        //       FieldsTextColor: dzItem.couleur_texte_champs,
        //       FieldsBackgroundColor: dzItem.couleur_fond_champs,
        //       FieldsBorderColor: dzItem.couleur_bordure_champs,
        //       BackgroundColorPopup: dzItem.couleur_fond_popup,
        //       TextColorPopup: dzItem.couleur_texte_popup,
        //       TextPopup: dzItem.texte_popup,
        //       BorderColorPopup: dzItem.couleur_bordure_popup,
        //       LogoPopup: dzItem.logo_popup,
        //       CheckboxRingColor: dzItem.couleur_cercle_checkbox,
        //       CheckboxAnchorColor: dzItem.couleur_texte_lien_checkbox,
        //       CheckboxCheckedBackgroundColor:
        //         dzItem.couleur_fond_checkbox_cochee,
        //       ButtonItem: dzItem.type_bouton,
        //       ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //       ButtonHoverBackgroundColor: dzItem.couleur_fond_survol_bouton,
        //       ButtonTextColor: dzItem.couleur_texte_bouton,
        //       ButtonHoverTextColor: dzItem.couleur_texte_survol_bouton,
        //       ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //       ButtonText: dzItem.texte_bouton,
        //       TitleColor: dzItem.couleur_titre,
        //       TitleText: dzItem.texte_titre,
        //       IsBoxTitleDisplayed: dzItem.activer_encart_titre,
        //       BoxTitleColor: dzItem.couleur_encart_titre,
        //       SubTitleColor: dzItem.couleur_sous_titre,
        //       SubTitleText: dzItem.texte_sous_titre,
        //       TextColor: dzItem.couleur_texte,
        //       Text: dzItem.texte,
        //       ImgSrc: dzItem.image,
        //       BeforeCheckboxText: dzItem.texte_avant_checkbox,
        //       BeforeCheckboxTextColor: dzItem.couleur_texte_avant_checkbox,
        //       CheckboxLabelText1: dzItem.texte_premier_etiquettes_checkbox,
        //       CheckboxLabelText2: dzItem.texte_second_etiquettes_checkbox,
        //       CheckboxAnchorLink: dzItem.lien_checkbox,
        //       CheckboxAnchorText: dzItem.texte_lien_checkbox,
        //       AfterCheckboxText: dzItem.texte_apres_checkbox,
        //       AfterCheckboxTextColor: dzItem.couleur_texte_apres_checkbox,
        //     },
        //   });
        //   break;

        //   case "c4-d-components.candidature-form":
        //     composants.push({
        //       component: CandidatureFormComponent,
        //       name: componentName,
        //       data: {
        //         BackgroundColor: dzItem.couleur_fond,
        //         FormBackgroundColor: dzItem.couleur_fond_formulaire,
        //         NameLabel: dzItem.nom_label,
        //         FirstNameLabel: dzItem.prenom_label,
        //         EmailLabel: dzItem.email_label,
        //         PhoneLabel: dzItem.telephone_label,
        //         CountryLabel: dzItem.pays_label,
        //         CityLabel: dzItem.ville_label,
        //         DomainLabel: dzItem.domaine_label,
        //         CvLabel: dzItem.cv_label,
        //         LettreMotivationLabel: dzItem.lettre_motivation_label,
        //         VideoCandidatLabel: dzItem.video_candidat_label,
        //         AvailabilityLabel: dzItem.disponibilite_label,
        //         ProfileLinkLabel: dzItem.lien_profile_label,
        //         DomainItems: dzItem.domaine_options,
        //         AvailabilityItems: dzItem.disponibilite_options,
        //         HasBorderFormActive: dzItem.activer_bordure_formulaire,
        //         FormBorderColor: dzItem.couleur_bordure_formulaire,
        //         FieldsErrorColor: dzItem.couleur_erreur_champs,
        //         FieldsLabelColor: dzItem.couleur_etiquettes_champs,
        //         FieldsTextColor: dzItem.couleur_texte_champs,
        //         FieldsBackgroundColor: dzItem.couleur_fond_champs,
        //         FieldsBorderColor: dzItem.couleur_bordure_champs,
        //         CheckboxRingColor: dzItem.couleur_cercle_checkbox,
        //         CheckboxAnchorColor: dzItem.couleur_texte_lien_checkbox,
        //         CheckboxCheckedBackgroundColor:
        //           dzItem.couleur_fond_checkbox_cochee,
        //         ButtonItem: dzItem.type_bouton,
        //         ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //         ButtonHoverBackgroundColor: dzItem.couleur_fond_survol_bouton,
        //         ButtonTextColor: dzItem.couleur_texte_bouton,
        //         ButtonHoverTextColor: dzItem.couleur_texte_survol_bouton,
        //         ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //         ButtonText: dzItem.texte_bouton,
        //         BeforeFirstCheckboxText: dzItem.texte_avant_premiere_checkbox,
        //         BeforeSecondCheckboxText: dzItem.texte_avant_deuxieme_checkbox,
        //         BeforeCheckboxTextColor: dzItem.couleur_texte_avant_checkbox,
        //         FirstCheckboxLabelText: dzItem.texte_premiere_checkbox,
        //         SecondCheckboxLabelText: dzItem.texte_deuxieme_checkbox,
        //         AfterFirstCheckboxText: dzItem.texte_apres_premiere_checkbox,
        //         AfterSecondCheckboxText: dzItem.text_apres_deuxieme_checkbox,
        //         AfterCheckboxTextColor: dzItem.couleur_texte_apres_checkbox,
        //         PopupBackgroundColor: dzItem.couleur_fond_popup,
        //         PopupText: dzItem.texte_popup,
        //         PopupTextColor: dzItem.couleur_texte_popup,
        //         FirstButtonPopupText: dzItem.texte_premier_bouton_popup,
        //         LinkFirstButtonPopup: dzItem.lien_premier_bouton_popup,
        //         SecondButtonPopupText: dzItem.texte_deuxieme_bouton_popup,
        //         LinkSecondButtonPopup: dzItem.lien_deuxieme_bouton_popup,
        //       },
        //     });
        //     break;

        // case "c4-d-components.tabs":
        //   composants.push({
        //     component: TabsComponent,
        //     name: componentName,
        //     data: {
        //       backgroundColorAll: dzItem.couleur_background,
        //       isLeft: dzItem.card_a_gauche,
        //       header: dzItem.avant_titre,
        //       isHeadereDisplayed: dzItem.afficher_avant_titre,
        //       headerColor: dzItem.couleur_avant_titre,
        //       titleText: dzItem.titre,
        //       titleColor: dzItem.couleur_titre,
        //       istitleDisplayed: dzItem.afficher_titre,
        //       subTitleColor: dzItem.couleur_sous_titre,
        //       subTitle: dzItem.sous_titre,
        //       issubTitleDisplayed: dzItem.afficher_sous_titre,
        //       textColor: dzItem.couleur_texte,
        //       text: dzItem.texte,
        //       istextDisplayed: dzItem.afficher_texte,
        //       buttons: dzItem.boutons,
        //       cards: dzItem.carte,
        //     },
        //   });

        //   break;

        // case "c4-d-components.box-text-v-2":
        //   composants.push({
        //     component: TextComponent,
        //     name: componentName,
        //     data: {
        //       backgroundColorAll: dzItem.couleur_background,
        //       header: dzItem.avant_titre,
        //       isHeadereDisplayed: dzItem.afficher_avant_titre,
        //       headerColor: dzItem.couleur_avant_titre,
        //       titleText: dzItem.titre,
        //       titleColor: dzItem.couleur_titre,
        //       istitleDisplayed: dzItem.afficher_titre,
        //       isBoldSubtitleActive: dzItem.activer_gras_sous_titre,
        //       isBoxTitleDisplayed: dzItem.afficher_encart_titre,
        //       boxTitleColor: dzItem.couleur_encart_titre,
        //       subTitleColor: dzItem.couleur_sous_titre,
        //       subTitle: dzItem.sous_titre,
        //       issubTitleDisplayed: dzItem.afficher_sous_titre,
        //       isBoxSubtitleDisplayed: dzItem.afficher_encart_sous_titre,
        //       boxSubtitleColor: dzItem.couleur_encart_sous_titre,
        //       textColor: dzItem.couleur_texte,
        //       text: dzItem.texte,
        //       istextDisplayed: dzItem.afficher_texte,
        //       headerSize: dzItem.taille_avant_titre,
        //       titleSize: dzItem.taille_titre,
        //       subTitleSize: dzItem.taille_sous_titre,
        //       textSize: dzItem.taille_texte,
        //     },
        //   });

        //   break;

        //     case 'c4-d-components.carousel-v-2':
        //       composants.push({
        //         component: CarouselItemComponent,
        //         name: componentName,
        //         data: {
        //           BackgroundColor: dzItem.backgroundColor,
        //           Height: dzItem.height,
        //           BorderRadius: dzItem.borderRadius,
        //           IsLeft: dzItem.isLeft,
        //           ItemAdditionalClasses: dzItem.itemAdditionalClasses,
        //           ImagePanelAdditionalClasses: dzItem.imagePanelAdditionalClasses,
        //           ImagePanelClasses: dzItem.imagePanelClasses,
        //           ImgClasses: dzItem.imgClasses,
        //           SrcImage: dzItem.srcImage,
        //           BeforetitleText: dzItem.beforetitleText,
        //           BeforetitleColor: dzItem.beforetitleColor,
        //           IsBeforeTitleDisplayed: dzItem.isBeforeTitleDisplayed,
        //           BeforetitlePanelClasses: dzItem.beforetitlePanelClasses,
        //           BeforetitleAdditionalClasses: dzItem.beforetitleAdditionalClasses,
        //           TextPanelClasses: dzItem.textPanelClasses,
        //           TextPanelAdditionalClasses: dzItem.textPanelAdditionalClasses,
        //           TitleText: dzItem.titleText,
        //           TitleType: dzItem.titleType,
        //           TitleColor: dzItem.titleColor,
        //           TitleClasses: dzItem.titleClasses,
        //           IstitleDisplayed: dzItem.istitleDisplayed,
        //           SubtitleText: dzItem.subtitleText,
        //           SubtitleType: dzItem.subtitleType,
        //           SubtitleColor: dzItem.subtitleColor,
        //           SubtitleClasses: dzItem.subtitleClasses,
        //           IsSubTitleDisplayed: dzItem.issubTitleDisplayed,
        //           MaxLengthText: dzItem.maxLengthText,
        //           ButtonShowLessText: dzItem.buttonShowLessText,
        //           ButtonShowMoreText: dzItem.buttonShowMoreText,
        //           ButtonShowTextAdditionalClasses:
        //             dzItem.buttonShowTextAdditionalClasses,
        //           ColorButtonShowText: dzItem.colorButtonShowText,
        //           TextColor: dzItem.textColor,
        //           Text: dzItem.text,
        //           TextClasses: dzItem.textClasses,
        //           TextAdditionalClasses: dzItem.textAdditionalClasses,
        //           IsTextDisplayed: dzItem.istextDisplayed,
        //           ButtonBorderClasses: dzItem.buttonBorderClasses,
        //           ButtonHeight: dzItem.buttonHeight,
        //           ButtonWidth: dzItem.buttonWidth,
        //           ButtonBackgroundColor: dzItem.buttonBackgroundColor,
        //           ButtonTextColor: dzItem.buttonTextColor,
        //           ButtonAdditionalClasses: dzItem.buttonAdditionalClasses,
        //           ButtonText: dzItem.buttonText,
        //           IsButtonDisplayed: dzItem.isButtonDisplayed,
        //         },
        //       });

        //       console.log('dans la dz' + dzItem.type_du_bouton);

        //       break;

        // case "c4-d-components.carousel-item-v2":
        //   composants.push({
        //     component: CarouselItemV2Component,
        //     name: componentName,
        //     data: {
        //       demontionAll: dzItem.demontionAll,
        //       backgroundColorAll: dzItem.couleur_du_carousel,
        //       positionCarousel: dzItem.positionCarousel,
        //       demontionContenaire: dzItem.demontionContenaire,
        //       backgroundContenaire: dzItem.backgroundContenaire,
        //       spaceIntoContenaire: dzItem.spaceIntoContenaire,
        //       isLeft: dzItem.image_a_gauche,
        //       spaceImagewithText: dzItem.spaceImagewithText,
        //       demontionCarousel: dzItem.demontionCarousel,
        //       backgroundColor: dzItem.backgroundColor,

        //       header: dzItem.avant_titre,
        //       headerColor: dzItem.couleur_avant_titre,
        //       isHeadereDisplayed: dzItem.activer_avant_titre,

        //       titleText: dzItem.titre,
        //       titleColor: dzItem.couleur_titre,
        //       titleClasses: dzItem.titleClasses,
        //       istitleDisplayed: dzItem.activer_titre,

        //       subTitletitleClasses: dzItem.subTitletitleClasses,
        //       issubTitleDisplayed: dzItem.activer_sous_titre,
        //       subTitle: dzItem.sous_titre,
        //       subTitleColor: dzItem.couleur_sous_titre,

        //       text: dzItem.text,
        //       textColor: dzItem.couleur_text,
        //       textClasses: dzItem.textClasses,
        //       istextDisplayed: dzItem.activer_text,

        //       SrcImage: dzItem.image,
        //       demontionImage: dzItem.demontionImage,
        //       isImageDisplayed: dzItem.isImageDisplayed,
        //       isContenaireDisplayed: dzItem.isContenaireDisplayed,
        //       isButtonDisplayed: dzItem.afficher_bouton,
        //       buttonAdditionalClasses: dzItem.buttonAdditionalClasses,
        //       ButtonItem: dzItem.type_bouton,
        //       ButtonTextColor: dzItem.couleur_text_bouton,
        //       ButtonHoverTextColor: dzItem.couleur_text_bouton_survol,
        //       ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //       buttonHoverBackgroundColor: dzItem.couleur_fond_bouton_survol,
        //       ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //       ButtonText: dzItem.text_bouton,
        //     },
        //   });
        //   break;

        // case 'c4-d-components.menu':
        //   composants.push({
        //     component: MenuComponent,
        //     name: componentName,
        //     data: {
        //       TextColor: dzItem.couleur_text,
        //       LogoSrc: dzItem.logo_image,
        //       HasContactButton: dzItem.afficher_bouton,
        //       ButtonItem: dzItem.type_bouton,
        //       ButtonTextColor: dzItem.couleur_text_bouton,
        //       ButtonHoverTextColor: dzItem.couleur_text_bouton_survol,
        //       ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //       ButtonHoverBackgroundColor: dzItem.couleur_fond_bouton_survol,
        //       ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //       ButtonText: dzItem.text_bouton,
        //       BackgroundColor: dzItem.couleur_fond_menu,
        //       SubMenuBackgroundColor: dzItem.couleur_fond_sous_menu,
        //       SubMenuItemsTextColor: dzItem.couleur_text_sous_menu,
        //       MenuItems: dzItem.MenuItems,
        //     },
        //   });
        //   break;

        // case "c4-d-components.menu-v-3":
        //   composants.push({
        //     component: MenuComponent,
        //     name: componentName,
        //     data: {
        //       TextColor: dzItem.couleur_text,
        //       LogoSrc: dzItem.image,
        //       HasContactButton: dzItem.afficher_bouton,
        //       ButtonItem: dzItem.type_bouton,
        //       ButtonTextColor: dzItem.couleur_text_bouton,
        //       ButtonHoverTextColor: dzItem.couleur_text_bouton_survol,
        //       ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //       ButtonHoverBackgroundColor: dzItem.couleur_fond_bouton_survol,
        //       ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //       ButtonText: dzItem.text_bouton,
        //       BackgroundColor: dzItem.couleur_fond_menu,
        //       SubMenuBackgroundColor: dzItem.couleur_fond_sous_menu,
        //       SubMenuItemsTextColor: dzItem.couleur_text_sous_menu,
        //       MenuItems: dzItem.ItemMenu,
        //     },
        //   });
        //   break;

        // case "c4-d-components.box-text":
        //   composants.push({
        //     component: BoxTextComponent,
        //     name: componentName,
        //     data: {
        //       BackgroundColor: dzItem.couleur_fond,
        //       IsLinearGradientBackgroundActive:
        //         dzItem.activer_couleur_fond_lineaire,
        //       StartColorLinearGradient: dzItem.couleur_debut_fond_lineaire,
        //       EndColorLinearGradient: dzItem.couleur_fin_fond_lineaire,
        //       Header: dzItem.text_entete,
        //       ImgSrc: dzItem.image,
        //       ImageHeight: dzItem.hauteur_image,
        //       HeaderColor: dzItem.couleur_text_entete,
        //       IsHeadereDisplayed: dzItem.afficher_entete,
        //       TitleText: dzItem.text_titre,
        //       TitleColor: dzItem.couleur_text_titre,
        //       IsBoxTitleDisplayed: dzItem.afficher_encart_titre,
        //       BoxTitleColor: dzItem.couleur_encart_titre,
        //       IsTitleDisplayed: dzItem.afficher_titre,
        //       IsBoldTitleActive: dzItem.activer_gras_titre,
        //       SubTitle: dzItem.text_sous_titre,
        //       SubTitleColor: dzItem.couleur_text_sous_titre,
        //       IsBoxSubtitleDisplayed: dzItem.afficher_encart_sous_titre,
        //       BoxSubtitleColor: dzItem.couleur_encart_sous_titre,
        //       IsSubTitleDisplayed: dzItem.afficher_sous_titre,
        //       IsBoldSubtitleActive: dzItem.activer_gras_sous_titre,
        //       Text: dzItem.text,
        //       TextColor: dzItem.couleur_text,
        //       IsTextDisplayed: dzItem.afficher_text,
        //       HasButton: dzItem.afficher_bouton,
        //       ButtonItem: dzItem.type_bouton,
        //       ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //       ButtonHoverBackgroundColor: dzItem.couleur_fond_bouton_survol,
        //       ButtonTextColor: dzItem.couleur_text_bouton,
        //       ButtonHoverTextColor: dzItem.couleur_text_bouton_survol,
        //       ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //       ButtonText: dzItem.text_bouton,
        //       HasBorder: dzItem.activer_bordure,
        //       BorderColor: dzItem.couleur_bordure,
        //       Item: dzItem.type_box_text,
        //       FormBackgroundColor: dzItem.couleur_fond_formulaire,
        //       InputErrorTextColor: dzItem.couleur_text_erreur_entree,
        //       InputErrorRequiredMessage: dzItem.message_erreur_entree_requise,
        //       InputErrorPatternMessage: dzItem.message_erreur_entree_incorrect,
        //       InputActiveSubmitted: dzItem.activer_erreur_entree,
        //       InputPlaceholder: dzItem.indicateur_temporaire_text_entree,
        //       InputType: dzItem.type_entree,
        //       InputActiveRequired: dzItem.activer_erreur_entree_requise,
        //       InputBorderColor: dzItem.couleur_bordure_entree,
        //       InputActiveTooltip: dzItem.activer_outils_aide_entree,
        //       InputTextColor: dzItem.couleur_text_entree,
        //       InputBackgroundColor: dzItem.couleur_fond_entree,
        //       ButtonLink: dzItem.lien_bouton,
        //       IsButtonLinkActive: dzItem.activer_lien_bouton,
        //       HeaderSize: dzItem.taille_entete,
        //       TitleSize: dzItem.taille_titre,
        //       SubTitleSize: dzItem.taille_sous_titre,
        //       TextSize: dzItem.taille_texte,
        //     },
        //   });
        //   break;

        // case "c4-d-components.newsletters":
        //   composants.push({
        //     component: NewslettersComponent,
        //     name: componentName,
        //     data: {
        //       BackgroundColor: dzItem.couleur_fond,
        //       TitleText: dzItem.titre,
        //       TitleColor: dzItem.couleur_titre,
        //       IsTitleDisplayed: dzItem.afficher_titre,
        //       IsBoldTitleActive: dzItem.activer_gras_titre,
        //       IsBoxTitleDisplayed: dzItem.afficher_encart_titre,
        //       BoxTitleColor: dzItem.couleur_encart_titre,
        //       SubTitle: dzItem.sous_titre,
        //       SubTitleColor: dzItem.couleur_sous_titre,
        //       IsSubTitleDisplayed: dzItem.afficher_sous_titre,
        //       IsBoldSubtitleActive: dzItem.activer_gras_sous_titre,
        //       IsBoxSubtitleDisplayed: dzItem.afficher_encart_sous_titre,
        //       BoxSubtitleColor: dzItem.couleur_encart_sous_titre,
        //       Text: dzItem.text,
        //       TextColor: dzItem.couleur_text,
        //       IsTextDisplayed: dzItem.afficher_text,
        //       ButtonItem: dzItem.type_bouton,
        //       ButtonBackgroundColor: dzItem.couleur_fond_bouton,
        //       ButtonHoverBackgroundColor: dzItem.couleur_fond_bouton_survol,
        //       ButtonTextColor: dzItem.couleur_text_bouton,
        //       ButtonHoverTextColor: dzItem.couleur_text_bouton_survol,
        //       ButtonBorderColor: dzItem.couleur_bordure_bouton,
        //       ButtonText: dzItem.texte_bouton,
        //       HasBorder: dzItem.activer_bordure_formulaire,
        //       BorderColor: dzItem.couleur_bordure_formulaire,
        //       Item: dzItem.type_newsletter,
        //       FormBackgroundColor: dzItem.couleur_fond_formulaire,
        //       BackgroundColorPopup: dzItem.couleur_fond_popup,
        //       TextColorPopup: dzItem.couleur_texte_popup,
        //       TextPopup: dzItem.texte_popup,
        //       BorderColorPopup: dzItem.couleur_bordure_popup,
        //       LogoPopup: dzItem.logo_popup,
        //       InputErrorColor: dzItem.couleur_erreur_champs,
        //       InputErrorRequiredMessage: dzItem.message_erreur_champs_requis,
        //       InputErrorPatternMessage: dzItem.message_erreur_champs_incorrect,
        //       InputPlaceholder: dzItem.indicateur_temporaire_text_champs,
        //       InputBorderColor: dzItem.couleur_bordure_champs,
        //       InputTextColor: dzItem.couleur_texte_champs,
        //       InputBackgroundColor: dzItem.couleur_fond_champs,
        //       TitleSize: dzItem.taille_titre,
        //       SubTitleSize: dzItem.taille_sous_titre,
        //       TextSize: dzItem.taille_texte,
        //     },
        //   });
        //   break;

        // case "c4-d-components.image-v-2":
        //   composants.push({
        //     component: ImageComponent,
        //     name: componentName,
        //     data: {
        //       ImgSrc: dzItem.image,
        //       videoUrl: dzItem.video_v2,
        //       HasVideoDisplayed: dzItem.afficher_video,
        //       titleText: dzItem.titre,
        //       titleColor: dzItem.couleur_titre,
        //       subTitleText: dzItem.sous_titre,
        //       subTitleColor: dzItem.couleur_sous_titre,
        //       text: dzItem.texte,
        //       textColor: dzItem.couler_texte,
        //       isButtonDisplayed: dzItem.afficher_bouton,
        //       corbtn1: dzItem.couleur_gauche_bouton,
        //       corbtn2: dzItem.couleur_droite_bouton,
        //       buttonLinkActive: dzItem.lien_bouton,
        //       buttonText: dzItem.texte_bouton,
        //       buttonTextColor: dzItem.couleur_texte_bouton,
        //     },
        //   });
        //   break;

        // case "c4-d-components.vertical-space":
        //   composants.push({
        //     component: VerticalSpaceComponent,
        //     name: componentName,
        //     data: {
        //       BackgroundColor: dzItem.couleur_fond_espace,
        //       EnterNumber: dzItem.espace,
        //     },
        //   });

        //   break;

        // case "c4-d-components.carousel-type-2":
        //   composants.push({
        //     component: CarouselType2Component,
        //     name: componentName,
        //     data: {
        //       backgroundColorAll: dzItem.couleur_du_carousel,
        //       isLeft: dzItem.image_a_gauche,
        //       titleText: dzItem.titre,
        //       titleColor: dzItem.couleur_titre,
        //       text: dzItem.texte,
        //       textColor: dzItem.couleur_texte,
        //       SrcImage: dzItem.image,
        //       isButtonDisplayed: dzItem.affichage_bouton,
        //       ButtonTextColor: dzItem.couleur_texte_bouton,
        //       buttonBackgroundColor: dzItem.couleur_bouton,
        //       buttonHoverBackgroundColor: dzItem.couleur_survol_bouton,
        //       ButtonText: dzItem.texte_bouton,
        //       buttonLink: dzItem.lien_bouton,
        //       cards: dzItem.carte_carousel,
        //     },
        //   });
        //   break;

        // case "c4-d-components.carousel-type-3":
        //   composants.push({
        //     component: CarouselType3Component,
        //     name: componentName,
        //     data: {
        //       backgroundColorAll: dzItem.background,
        //       IsLinearGradientBackgroundActive: dzItem.activer_couleur_fond_lineaire,
        //       StartColorLinearGradient: dzItem.couleur_debut_fond_lineaire,
        //       EndColorLinearGradient: dzItem.couleur_fin_fond_lineaire,
        //       isLeft: dzItem.image_a_gauche,
        //       titleText: dzItem.titre,
        //       titleColor: dzItem.couleur_titre,
        //       SrcImage: dzItem.image,
        //       cards: dzItem.carte_carousel3,
        //     },
        //   });
        //   break;

        //   case "c4-d-components.static-header":
        //   composants.push({
        //     component: StaticHeaderComponent,
        //     name: componentName,
        //     data: {
        //       backgroundColorAll: dzItem.couleur_background,
        //       isLeft: dzItem.image_a_gauche,
        //       titleText: dzItem.titre,
        //       titleColor: dzItem.couleur_titre,
        //       subTitle: dzItem.sous_titre,
        //       text: dzItem.texte,
        //       SrcImage: dzItem.image,
        //       isButtonDisplayed: dzItem.affichage_bouton,
        //       ButtonTextColor: dzItem.couleur_texte_bouton,
        //       startColorLinearGradient: dzItem.couleur_1,
        //       endColorLinearGradient: dzItem.couleur_2,
        //       ButtonText: dzItem.texte_bouton,
        //       buttonLink: dzItem.lien_bouton,

        //     },
        //   });
        //   break;
        //     case 'c4-d-components.menu-v-2':
        //       composants.push({
        //         component: MenuV2Component,
        //         name: componentName,
        //         data: {
        //           TextColor: dzItem.textColor,
        //           TextClass: dzItem.textClass,
        //           LogoMenuSrc: dzItem.logoMenuSrc,
        //           HasContactButton: dzItem.hasContactButton,
        //           ButtonBorderClass: dzItem.buttonBorderClass,
        //           ButtonBackgroundColor: dzItem.buttonBackgroundColor,
        //           ButtonTextColor: dzItem.buttonTextColor,
        //           ButtonText: dzItem.buttonText,
        //           ButtonAdditionalClasses: dzItem.buttonAdditionalClasses,
        //           LogoSrc: dzItem.logoSrc,
        //           LogoClass: dzItem.logoClass,
        //           TitleColor: dzItem.titleColor,
        //           TitleClass: dzItem.titleClass,
        //           TitleText: dzItem.titleText,
        //           Border: dzItem.border,
        //           BackgroundColor: dzItem.backgroundColor,
        //           ShowMenu: dzItem.showMenu,
        //           BorderColor: dzItem.borderColor,
        //           AdditionalClasses: dzItem.additionalClasses,
        //           Items: dzItem.items,
        //           Icons: dzItem.icons,
        //         },
        //       });
        //       break;
      }
    }

    return composants;
  }
}
