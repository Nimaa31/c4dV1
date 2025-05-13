import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarouselSlideCardsComponent } from './carousel-slide-cards.component';

describe('CarouselSlideCardsComponent', () => {
  let component: CarouselSlideCardsComponent;
  let fixture: ComponentFixture<CarouselSlideCardsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [CarouselSlideCardsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(CarouselSlideCardsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
