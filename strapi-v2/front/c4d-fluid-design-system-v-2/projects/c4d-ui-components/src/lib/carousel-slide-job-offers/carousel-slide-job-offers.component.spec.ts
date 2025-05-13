import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarouselSlideJobOffersComponent } from './carousel-slide-job-offers.component';

describe('CarouselSlideJobOffersComponent', () => {
  let component: CarouselSlideJobOffersComponent;
  let fixture: ComponentFixture<CarouselSlideJobOffersComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [CarouselSlideJobOffersComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(CarouselSlideJobOffersComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
