import { ComponentFixture, TestBed } from '@angular/core/testing';

import { C4dUiComponentsComponent } from './c4d-ui-components.component';

describe('C4dUiComponentsComponent', () => {
  let component: C4dUiComponentsComponent;
  let fixture: ComponentFixture<C4dUiComponentsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ C4dUiComponentsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(C4dUiComponentsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
