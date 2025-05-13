import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { Observable, tap } from "rxjs";

@Injectable({
  providedIn: "root",
})
export class FooterService {
  api_key =
    "41a4e0e6fc09046c4f3cac4806286190da111a2a707960ec35d4bf008d1cdc49eb869b09acb046bf6e2f06108ffc8de04a0f0f4d8eda93fc6fb727081df056a0afb9841e40bf9e6c6af4ae13ec7dbf8ace508b7a7b9b8382759880abd225ff55756c56c2da18b2863ea4449b2eb5164f7b773aa65bd8f0a1f3e6447aa9ff72d6";
  constructor(private http: HttpClient) {}

  public getFooterContent(): Observable<any> {
    const header = new HttpHeaders({
      "Content-Type": "application/json",
      Authorization: `Bearer ${this.api_key}`,
    });

    return this.http.get("http://localhost:1337/api/footers?populate=deep", {
      headers: header,
    });
  }
}
