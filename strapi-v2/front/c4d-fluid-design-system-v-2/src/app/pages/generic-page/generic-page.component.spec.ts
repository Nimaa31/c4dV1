import { ComponentFixture, TestBed } from '@angular/core/testing';

import { GenericPageComponent } from './generic-page.component';
import { AdDirective } from 'src/app/shared/directives/ad.directive';

describe('GenericPageComponent', () => {
  let component: GenericPageComponent;
  let fixture: ComponentFixture<GenericPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ GenericPageComponent,AdDirective ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(GenericPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
