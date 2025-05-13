import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarouselTypeLinearComponent } from './carousel-type-linear.component';

describe('CarouselTypeLinearComponent', () => {
  let component: CarouselTypeLinearComponent;
  let fixture: ComponentFixture<CarouselTypeLinearComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [CarouselTypeLinearComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(CarouselTypeLinearComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
