import { ComponentFixture, TestBed } from '@angular/core/testing';

import { VerticalSpaceComponent } from './vertical-space.component';

describe('VerticalSpaceComponent', () => {
  let component: VerticalSpaceComponent;
  let fixture: ComponentFixture<VerticalSpaceComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ VerticalSpaceComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(VerticalSpaceComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
