import { Component, OnInit, ViewChild, Input } from "@angular/core";
import { Dictionary } from "../../shared/dictionary";
import { AdDirective } from "../../shared/directives/ad.directive";
import { ActivatedRoute } from "@angular/router";

@Component({
  selector: "app-generic-page",
  templateUrl: "./generic-page.component.html",
  styleUrls: ["./generic-page.component.css"],
})
export class GenericPageComponent implements OnInit {
  @ViewChild(AdDirective, { static: true }) adHost!: AdDirective;
  dataFromStrapi: any[] = [];

  constructor(
    private activatedRoute: ActivatedRoute,
    private dictionary: Dictionary
  ) {}

  @Input() showMenu!: boolean;
  @Input() showFooter!: boolean;
  @Input() pageBackgroundColor = "blue";
  @Input() ellipses: any[] = [];

  ngOnInit() {
    this.activatedRoute.data.subscribe({
      next: (data) => {
        this.activatedRoute.data.subscribe((data: any) => {
          this.dataFromStrapi = data;
          this.pageBackgroundColor =
            data.page.data.attributes.pageBackgroundColor;
          document.body.style.backgroundColor = this.pageBackgroundColor;
          this.showFooter = data.page.data.attributes.showFooter;
          this.showMenu = data.page.data.attributes.showMenu;
          this.ellipses = data.page.data.attributes.ellipses;
          this.injecterComposantsDynamiques();
        });
      },
      error: (err) => {
        console.error(err);
      },
      complete: () => {
        console.log("complete");
      },
    });

    // this.activatedRoute.data.subscribe((data: any) => {
    //   this.dataFromStrapi = data;
    //   this.pageBackgroundColor = data.page.data.attributes.pageBackgroundColor;
    //   this.showFooter = data.page.data.attributes.showFooter;
    //   this.showMenu = data.page.data.attributes.showMenu;
    //   this.ellipses = data.page.data.attributes.ellipses;
    //   this.injecterComposantsDynamiques();
    // });
  }

  injecterComposantsDynamiques() {
    const composants = this.dictionary.getComposantsDynamiques(
      this.dataFromStrapi
    );
    console.log("the data from strapi", this.dataFromStrapi);

    for (const composant of composants) {
      const componentFactory = this.adHost.viewContainer.createComponent(
        composant.component
      );
      const instance: any = componentFactory.instance;
      instance.data = composant.data;
    }
  }
}
