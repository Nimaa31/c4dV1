import { TestBed } from '@angular/core/testing';

import { HomePageService } from './home-page.service';

describe('HomePageService', () => {
  let service: HomePageService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(HomePageService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
// token= "8fcb1c90c3a8a440d2accb2c34e4859588deb0f61c8295a581f1c920614953abecfada3b26c18beaa4150a0c22f872b27a4bec0e5a3a0d864c6a5197d7b93b968fd81ec117531c04255a2813c3adc57b2314e23e3cf986eaf24cbe0bc576a90654d7f67b921fea4457e2321d2ed32573f38fb3195148c40e4e7319023abd7318"