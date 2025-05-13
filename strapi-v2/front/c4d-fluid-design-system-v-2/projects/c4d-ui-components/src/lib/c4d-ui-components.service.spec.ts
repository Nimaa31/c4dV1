import { TestBed } from '@angular/core/testing';

import { C4dUiComponentsService } from './c4d-ui-components.service';

describe('C4dUiComponentsService', () => {
  let service: C4dUiComponentsService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(C4dUiComponentsService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
