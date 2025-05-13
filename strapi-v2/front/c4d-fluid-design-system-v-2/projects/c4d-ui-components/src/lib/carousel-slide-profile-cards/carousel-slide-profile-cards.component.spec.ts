import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarouselSlideProfileCardsComponent } from './carousel-slide-profile-cards.component';

describe('CarouselSlideProfileCardsComponent', () => {
  let component: CarouselSlideProfileCardsComponent;
  let fixture: ComponentFixture<CarouselSlideProfileCardsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [CarouselSlideProfileCardsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(CarouselSlideProfileCardsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
