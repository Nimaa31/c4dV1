import { TestBed } from '@angular/core/testing';

import { RouterLoaderArticleService } from './router-loader-article.service';

describe('RouterLoaderArticleService', () => {
  let service: RouterLoaderArticleService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(RouterLoaderArticleService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
