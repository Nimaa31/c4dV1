import { ComponentFixture, TestBed } from "@angular/core/testing";

import { SpontaneousJobApplicationFormComponent } from "./spontaneous-job-application-form.component";

describe("UnsolicitedApplicationFormComponent", () => {
  let component: SpontaneousJobApplicationFormComponent;
  let fixture: ComponentFixture<SpontaneousJobApplicationFormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [SpontaneousJobApplicationFormComponent],
    }).compileComponents();

    fixture = TestBed.createComponent(SpontaneousJobApplicationFormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it("should create", () => {
    expect(component).toBeTruthy();
  });
});
