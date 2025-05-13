import type { Schema, Attribute } from '@strapi/strapi';

export interface C4DComponentsAccordions extends Schema.Component {
  collectionName: 'components_c4d_components_accordions';
  info: {
    displayName: 'accordions';
    icon: 'filter';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    accordionTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    accordionContentColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    image: Attribute.Media;
    accordionsItems: Attribute.Component<'c4d-items.accordions-items', true>;
  };
}

export interface C4DComponentsCarouselParagraphIcons extends Schema.Component {
  collectionName: 'components_c4d_components_carousel_paragraph_icons';
  info: {
    displayName: 'carouselTypeParagraphIcons';
    icon: 'expand';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasText: Attribute.Boolean;
    text: Attribute.Text;
    textColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasButton: Attribute.Boolean;
    buttonText: Attribute.String;
    buttonLink: Attribute.String;
    image: Attribute.Media;
    icons: Attribute.Component<'c4d-items.icons', true>;
    reverseDirection: Attribute.Boolean;
  };
}

export interface C4DComponentsCarouselSlideJobOffers extends Schema.Component {
  collectionName: 'components_c4d_components_carousel_slide_job_offers';
  info: {
    displayName: 'CarouselSlideJobOffers';
  };
  attributes: {
    inputBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cardOpacity: Attribute.Integer;
    title: Attribute.String;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobDescriptionColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobHighlightedColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobBadgeColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobBadgeBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cards: Attribute.Component<'c4d-components.job-offer', true>;
  };
}

export interface C4DComponentsCarouselSlideJobOffres extends Schema.Component {
  collectionName: 'components_c4d_components_carousel_slide_job_offres';
  info: {
    displayName: 'carousel slide job offres';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    inputBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    outputBadgeColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cardOpacity: Attribute.Integer;
    title: Attribute.String;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobDescriptionColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobHighlightedColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobBadgeColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    jobBadgeBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
  };
}

export interface C4DComponentsCarouselSlide extends Schema.Component {
  collectionName: 'components_c4d_components_carousel_slides';
  info: {
    displayName: 'carouselSlide';
    icon: 'grid';
    description: '';
  };
  attributes: {
    title: Attribute.Text;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cardBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    enableTransparentCard: Attribute.Boolean;
    cardDescriptionColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cards: Attribute.Component<'c4d-items.slider-items', true>;
  };
}

export interface C4DComponentsCarouselTypeLinear extends Schema.Component {
  collectionName: 'components_c4d_components_carousel_type_linears';
  info: {
    displayName: 'carouselTypeLinear';
    icon: 'dashboard';
    description: '';
  };
  attributes: {
    startColorLinearGradient: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    endColorLinearGradient: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    title: Attribute.String;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasSubtitle: Attribute.Boolean;
    subtitle: Attribute.String;
    subtitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasButton: Attribute.Boolean;
    buttonText: Attribute.String;
    buttonLink: Attribute.String;
    image: Attribute.Media;
    enableLinearGradient: Attribute.Boolean;
  };
}

export interface C4DComponentsContactForm extends Schema.Component {
  collectionName: 'components_c4d_components_contact_forms';
  info: {
    displayName: 'contactForm';
    icon: 'collapse';
    description: '';
  };
  attributes: {
    formBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    enableTransparentForm: Attribute.Boolean;
    carouselTitle: Attribute.String;
    carouselTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasCarouselText: Attribute.Boolean;
    carouselText: Attribute.Text;
    carouselTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasCarouselButton: Attribute.Boolean;
    carouselButtonText: Attribute.String;
    carouselButtonLink: Attribute.String;
    carouselImgSrc: Attribute.Media;
    formTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    fieldsBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    formButtonText: Attribute.String;
    formSectionTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    formParagraphColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkboxBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkboxBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkBoxTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    formFields: Attribute.Component<'c4d-items.contact-form-items', true>;
    textPopup: Attribute.String;
    textColorPopup: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    popupBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
  };
}

export interface C4DComponentsContactJobForm extends Schema.Component {
  collectionName: 'components_c4d_components_contact_job_forms';
  info: {
    displayName: 'ContactJobForm';
    icon: 'bulletList';
  };
  attributes: {
    inputFormBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    outputFormBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    enableTransparentForm: Attribute.Boolean;
    carouselTitle: Attribute.String;
    carouselTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasCarouselText: Attribute.Boolean;
    carouselText: Attribute.String;
    carouselTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasCarouselButton: Attribute.Boolean;
    carouselButtonText: Attribute.String;
    carouselButtonLink: Attribute.String;
    carouselImgSrc: Attribute.Media;
    formTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    fieldsBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    fieldsBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    fieldsHilightedBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    formButtonText: Attribute.String;
    formSectionTitleColor: Attribute.String;
    formParagraphColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkboxBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkboxBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkBoxTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    textPopup: Attribute.String;
    textColorPopup: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    popupBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
  };
}

export interface C4DComponentsEllipse extends Schema.Component {
  collectionName: 'components_c4d_components_ellipses';
  info: {
    displayName: 'ellipse';
    icon: 'chartBubble';
  };
  attributes: {
    color: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    enableRightPosition: Attribute.Boolean;
    xPosition: Attribute.String;
    yPosition: Attribute.String;
  };
}

export interface C4DComponentsFooter extends Schema.Component {
  collectionName: 'components_c4d_components_footers';
  info: {
    displayName: 'footer';
    icon: 'code';
  };
  attributes: {
    test: Attribute.String;
  };
}

export interface C4DComponentsJobOffer extends Schema.Component {
  collectionName: 'components_c4d_components_job_offers';
  info: {
    displayName: 'JobOffer';
  };
  attributes: {
    title: Attribute.String;
    requiredEducationLevel: Attribute.String;
    workType: Attribute.String;
    contractType: Attribute.String;
    jobDescription: Attribute.Blocks;
    link: Attribute.String;
    cardSpacing: Attribute.String;
  };
}

export interface C4DComponentsParagraph extends Schema.Component {
  collectionName: 'components_c4d_components_paragraphs';
  info: {
    displayName: 'paragraph';
    icon: 'strikeThrough';
    description: '';
  };
  attributes: {
    hasTitle: Attribute.Boolean;
    title: Attribute.String;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasText: Attribute.Boolean;
    textColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasButton: Attribute.Boolean;
    textButton: Attribute.String;
    linkButton: Attribute.String;
    text: Attribute.Text;
    tintedColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
  };
}

export interface C4DComponentsSliderProfileCards extends Schema.Component {
  collectionName: 'components_c4d_components_slider_profile_cards';
  info: {
    displayName: 'sliderProfileCards';
    icon: 'crop';
    description: '';
  };
  attributes: {
    title: Attribute.Text;
    titleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    tintedColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cardBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    enableTransparentCard: Attribute.Boolean;
    cardNameColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cardJobColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    cardDescriptionColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasButton: Attribute.Boolean;
    enableLinearGradient: Attribute.Boolean;
    startColorLinearGradient: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    endColorLinearGradient: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    buttonText: Attribute.String;
    buttonLink: Attribute.String;
    profileCards: Attribute.Component<'c4d-items.slider-profile-items', true>;
  };
}

export interface C4DComponentsSpontaneousJobApplicationForm
  extends Schema.Component {
  collectionName: 'components_c4d_components_spontaneous_job_application_forms';
  info: {
    displayName: 'SpontaneousJobApplicationForm';
  };
  attributes: {
    inputFormBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    outputFormBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    enableTransparentForm: Attribute.Boolean;
    carouselTitle: Attribute.String;
    carouselTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasCarouselText: Attribute.Boolean;
    carouselText: Attribute.String;
    carouselTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    hasCarouselButton: Attribute.Boolean;
    carouselButtonText: Attribute.String;
    carouselButtonLink: Attribute.String;
    carouselImgSrc: Attribute.Media;
    formTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    fieldsBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    fieldsBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    fieldsHilightedBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    formButtonText: Attribute.String;
    formSectionTitleColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    formParagraphColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkboxBackgroundColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkboxBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    checkBoxTextColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    textPopup: Attribute.String;
    textColorPopup: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
    popupBorderColor: Attribute.String &
      Attribute.CustomField<'plugin::color-picker.color'>;
  };
}

export interface C4DComponentsVerticalSpace extends Schema.Component {
  collectionName: 'components_c4d_components_vertical_spaces';
  info: {
    displayName: 'verticalSpace';
    icon: 'arrowUp';
    description: '';
  };
  attributes: {
    spacing: Attribute.String;
  };
}

export interface C4DItemsAccordionsItems extends Schema.Component {
  collectionName: 'components_c4d_items_accordions_items';
  info: {
    displayName: 'accordionsItems';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    title: Attribute.String;
    content: Attribute.Text &
      Attribute.SetMinMaxLength<{
        maxLength: 300;
      }>;
  };
}

export interface C4DItemsContactFormItems extends Schema.Component {
  collectionName: 'components_c4d_items_contact_form_items';
  info: {
    displayName: 'contactFormItems';
    icon: 'crop';
    description: '';
  };
  attributes: {
    name: Attribute.String;
    placeholder: Attribute.String;
    type: Attribute.Enumeration<
      [
        'normal',
        'email',
        'phone',
        'textarea',
        'checkbox',
        'sectionTitle',
        'paragraph'
      ]
    > &
      Attribute.Required &
      Attribute.DefaultTo<'normal'>;
    isTwoFieldsInRow: Attribute.Boolean & Attribute.DefaultTo<false>;
    alreadyUsed: Attribute.Boolean & Attribute.DefaultTo<false>;
    isChecked: Attribute.Boolean & Attribute.DefaultTo<false>;
    text: Attribute.Text;
    isFocused: Attribute.Boolean & Attribute.DefaultTo<false>;
    isRequired: Attribute.Boolean & Attribute.DefaultTo<false>;
    regexPattern: Attribute.String;
  };
}

export interface C4DItemsFooterColumnItems extends Schema.Component {
  collectionName: 'components_c4d_items_footer_column_items';
  info: {
    displayName: 'footerItems';
    icon: 'bulletList';
    description: '';
  };
  attributes: {
    text: Attribute.String;
    link: Attribute.String;
  };
}

export interface C4DItemsFooterSocialItems extends Schema.Component {
  collectionName: 'components_c4d_items_footer_social_items';
  info: {
    displayName: 'footerSocialItems';
    icon: 'bulletList';
  };
  attributes: {
    icon: Attribute.Media;
    link: Attribute.String;
  };
}

export interface C4DItemsIcons extends Schema.Component {
  collectionName: 'components_c4d_items_icons';
  info: {
    displayName: 'iconsItems';
    icon: 'scissors';
    description: '';
  };
  attributes: {
    icon: Attribute.Media;
    text: Attribute.String;
  };
}

export interface C4DItemsMenuItems extends Schema.Component {
  collectionName: 'components_c4d_items_menu_items';
  info: {
    displayName: 'menuItems';
    icon: 'filter';
    description: '';
  };
  attributes: {
    text: Attribute.String;
    link: Attribute.String;
  };
}

export interface C4DItemsSliderItems extends Schema.Component {
  collectionName: 'components_c4d_items_slider_items';
  info: {
    displayName: 'sliderItems';
    icon: 'bulletList';
  };
  attributes: {
    image: Attribute.Media;
    description: Attribute.Text;
  };
}

export interface C4DItemsSliderProfileItems extends Schema.Component {
  collectionName: 'components_c4d_items_slider_profile_items';
  info: {
    displayName: 'sliderProfileItems';
    icon: 'bold';
    description: '';
  };
  attributes: {
    image: Attribute.Media;
    name: Attribute.String;
    job: Attribute.String;
    description: Attribute.Text;
    socialMedias: Attribute.Component<
      'c4d-items.slider-profile-social-medias-items',
      true
    >;
  };
}

export interface C4DItemsSliderProfileSocialMediasItems
  extends Schema.Component {
  collectionName: 'components_c4d_items_slider_profile_social_medias_items';
  info: {
    displayName: 'sliderProfileSocialMediasItems';
    icon: 'filePdf';
  };
  attributes: {
    icon: Attribute.Media;
    link: Attribute.String;
  };
}

declare module '@strapi/types' {
  export module Shared {
    export interface Components {
      'c4d-components.accordions': C4DComponentsAccordions;
      'c4d-components.carousel-paragraph-icons': C4DComponentsCarouselParagraphIcons;
      'c4d-components.carousel-slide-job-offers': C4DComponentsCarouselSlideJobOffers;
      'c4d-components.carousel-slide-job-offres': C4DComponentsCarouselSlideJobOffres;
      'c4d-components.carousel-slide': C4DComponentsCarouselSlide;
      'c4d-components.carousel-type-linear': C4DComponentsCarouselTypeLinear;
      'c4d-components.contact-form': C4DComponentsContactForm;
      'c4d-components.contact-job-form': C4DComponentsContactJobForm;
      'c4d-components.ellipse': C4DComponentsEllipse;
      'c4d-components.footer': C4DComponentsFooter;
      'c4d-components.job-offer': C4DComponentsJobOffer;
      'c4d-components.paragraph': C4DComponentsParagraph;
      'c4d-components.slider-profile-cards': C4DComponentsSliderProfileCards;
      'c4d-components.spontaneous-job-application-form': C4DComponentsSpontaneousJobApplicationForm;
      'c4d-components.vertical-space': C4DComponentsVerticalSpace;
      'c4d-items.accordions-items': C4DItemsAccordionsItems;
      'c4d-items.contact-form-items': C4DItemsContactFormItems;
      'c4d-items.footer-column-items': C4DItemsFooterColumnItems;
      'c4d-items.footer-social-items': C4DItemsFooterSocialItems;
      'c4d-items.icons': C4DItemsIcons;
      'c4d-items.menu-items': C4DItemsMenuItems;
      'c4d-items.slider-items': C4DItemsSliderItems;
      'c4d-items.slider-profile-items': C4DItemsSliderProfileItems;
      'c4d-items.slider-profile-social-medias-items': C4DItemsSliderProfileSocialMediasItems;
    }
  }
}
