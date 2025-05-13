import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CarouselTypeParagraphIconComponent } from './carousel-type-paragraph-icon.component';

describe('CarouselTypeParagraphIconComponent', () => {
  let component: CarouselTypeParagraphIconComponent;
  let fixture: ComponentFixture<CarouselTypeParagraphIconComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [CarouselTypeParagraphIconComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(CarouselTypeParagraphIconComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
