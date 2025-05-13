import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from "@angular/core";
import { BrowserModule } from "@angular/platform-browser";
import { C4dUiComponentsComponent } from "./c4d-ui-components.component";
import { ReactiveFormsModule, FormsModule } from "@angular/forms";
import { BrowserAnimationsModule } from "@angular/platform-browser/animations";
import { TestComponentComponent } from "./test-component/test-component.component";

import { HttpClientModule } from "@angular/common/http";
import { FooterComponent } from "./footer/footer.component";
import { AccordionsComponent } from "./accordions/accordions.component";
import { ButtonComponent } from "./button/button.component";
import { MenuComponent } from "./menu/menu.component";
import { ParagraphComponent } from "./paragraph/paragraph.component";
import { CarouselTypeLinearComponent } from "./carousel-type-linear/carousel-type-linear.component";
import { VerticalSpaceComponent } from "./vertical-space/vertical-space.component";
import { CarouselTypeParagraphIconComponent } from "./carousel-type-paragraph-icon/carousel-type-paragraph-icon.component";
import { CarouselSlideCardsComponent } from "./carousel-slide-cards/carousel-slide-cards.component";
// import function to register Swiper custom elements
import { register } from "swiper/element/bundle";
import { EllipseComponent } from "./ellipse/ellipse.component";
import { CarouselSlideProfileCardsComponent } from "./carousel-slide-profile-cards/carousel-slide-profile-cards.component";
import { ContactComponent } from "./contact/contact.component";
import { CarouselSlideJobOffersComponent } from "./carousel-slide-job-offers/carousel-slide-job-offers.component";
import { SpontaneousJobApplicationFormComponent } from "./spontaneous-job-application-form/spontaneous-job-application-form.component";
// register Swiper custom elements
register();

@NgModule({
  declarations: [
    C4dUiComponentsComponent,
    TestComponentComponent,
    FooterComponent,
    AccordionsComponent,
    ButtonComponent,
    MenuComponent,
    ParagraphComponent,
    CarouselTypeLinearComponent,
    VerticalSpaceComponent,
    CarouselTypeParagraphIconComponent,
    CarouselSlideCardsComponent,
    EllipseComponent,
    CarouselSlideProfileCardsComponent,
    ContactComponent,
    CarouselSlideJobOffersComponent,
    SpontaneousJobApplicationFormComponent,
  ],
  imports: [
    BrowserModule,
    FormsModule,
    ReactiveFormsModule,
    BrowserAnimationsModule,
    HttpClientModule,
  ],
  exports: [
    C4dUiComponentsComponent,
    TestComponentComponent,
    FooterComponent,
    AccordionsComponent,
    ButtonComponent,
    MenuComponent,
    ParagraphComponent,
    CarouselTypeLinearComponent,
    VerticalSpaceComponent,
    CarouselTypeParagraphIconComponent,
    CarouselSlideCardsComponent,
    EllipseComponent,
    CarouselSlideProfileCardsComponent,
    ContactComponent,
    CarouselSlideJobOffersComponent,
    SpontaneousJobApplicationFormComponent,
  ],
  schemas: [CUSTOM_ELEMENTS_SCHEMA],
})
export class C4dUiComponentsModule {}
