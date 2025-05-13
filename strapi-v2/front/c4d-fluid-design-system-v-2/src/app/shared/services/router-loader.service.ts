import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Router } from "@angular/router";
import { GenericPageComponent } from "../../../../src/app/pages/generic-page/generic-page.component";

@Injectable({
  providedIn: "root",
})
export class RouterLoaderService {
  api_key =
    "41a4e0e6fc09046c4f3cac4806286190da111a2a707960ec35d4bf008d1cdc49eb869b09acb046bf6e2f06108ffc8de04a0f0f4d8eda93fc6fb727081df056a0afb9841e40bf9e6c6af4ae13ec7dbf8ace508b7a7b9b8382759880abd225ff55756c56c2da18b2863ea4449b2eb5164f7b773aa65bd8f0a1f3e6447aa9ff72d6";
  public extractedData: any[] = [];
  constructor(private router: Router, private http: HttpClient) {}

  public async load() {
    const routes = this.router.config;
    try {
      const response: any = await this.loadContentTypes().toPromise();
      const contentTypes = response.data;
      const singleTypes = contentTypes.filter(
        (contentType: any) => contentType.schema.kind === "singleType"
      );

      const res = await Promise.all(
        singleTypes.map((singleType: any) =>
          this.loadSingleType(singleType.apiID).toPromise()
        )
      );

      for (let index = 0; index < res.length; index++) {
        const element = res[index].data.attributes;
        const dataFromStrapi = element;
        if(!element.page?.data){
          console.warn(`quelle page est null  ${index}`, element);
          continue;
        }
        const routeToAdd = {
          path:
            element.page.data.attributes.slug == "home-page"
              ? ""
              : element.page.data.attributes.slug,
          title: element.page.data.attributes.Nom,
          component: GenericPageComponent,
          data: dataFromStrapi,
        };
        if (element.page.data.attributes.slug == "home-page") {
          routeToAdd.path = "";
        }
        routes[0].children?.unshift(routeToAdd);
      }

      // const response2: any = await this.loadCollectionType(
      //   'formulaire-articles'
      // ).toPromise();
      // const collectionTypeResponses = response2.data;

      // for (let index = 0; index < response2.length; index++) {
      //   const element = response2[index];
      //   const dataFromStrapi = element;

      //   routes[0].children?.unshift({
      //     path: element.slug,
      //     title: element.nom,
      //     component: GenericPageComponent,
      //     data: dataFromStrapi,
      //   });
      //   this.extractedData.push({
      //     id: element.id,
      //     nom: element.nom,
      //     image: element.image,
      //     texte: element.texte,
      //     slug: element.slug,
      //   });

      // }

      return {
        routerConfig: routes,
        extractedData: this.extractedData,
      };
    } catch (error) {
      throw error;
    }
  }

  public loadContentTypes() {
    const header = new HttpHeaders({
      "Content-Type": "application/json",
      Authorization: `Bearer ${this.api_key}`,
    });

    return this.http.get(
      `http://localhost:1337/api/content-type-builder/content-types?populate=deep`,
      {
        headers: header,
      }
    );
  }

  public loadSingleType(apiID: string) {
    const header = new HttpHeaders({
      "Content-Type": "application/json",
      Authorization: `Bearer ${this.api_key}`,
    });

    return this.http.get(`http://localhost:1337/api/${apiID}?populate=deep`, {
      headers: header,
    });
  }
  public loadCollectionType(apiID: string) {
    const header = new HttpHeaders({
      "Content-Type": "application/json",
      Authorization: `Bearer ${this.api_key}`,
    });

    return this.http.get(`http://localhost:1337/api/${apiID}?populate=deep`, {
      headers: header,
    });
  }
}
