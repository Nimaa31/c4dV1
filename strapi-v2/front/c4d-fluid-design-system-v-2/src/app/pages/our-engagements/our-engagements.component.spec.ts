import { ComponentFixture, TestBed } from '@angular/core/testing';

import { OurEngagementsComponent } from './our-engagements.component';

describe('OurEngagementsComponent', () => {
  let component: OurEngagementsComponent;
  let fixture: ComponentFixture<OurEngagementsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ OurEngagementsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(OurEngagementsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
