import { Component, OnInit } from '@angular/core';
import { NavigationEnd, Router } from '@angular/router';
// import { MenuService } from '../../shared/services/menu.service';

@Component({
  selector: 'app-main',
  templateUrl: './main.component.html',
  styleUrls: ['./main.component.scss']
})
export class MainComponent {
  public menuBorder = true;
  public breadcrumb = true;
  public pageTitle = '';
  public menuItems :any = []

  // constructor(private router: Router, private menuService: MenuService) {
  //   this.router.events.subscribe((e) => {
  //     if (e instanceof NavigationEnd) {
  //       if(e.url == '/') {
  //         this.menuBorder = false
  //         this.breadcrumb = false
  //       }else if (e.url == '/contact') {
  //         this.menuBorder = false
  //         this.breadcrumb = true
  //         this.pageTitle = 'Contact'
  //       } else {
  //         this.menuBorder = true
  //         this.breadcrumb = true
  //       }
  //     }
  //   })
  // }

  // ngOnInit(): void {
  //   this.menuService.getMenuContent().subscribe(
  //     (res: any) => {
  //       res.forEach((element:any) => {
  //         this.menuItems.push({
  //           'text':element.Nom,
  //           'href': element.Slug,
  //           'target': '_self'
  //         })
  //       });
  //     }
  //   );
  // }
}
