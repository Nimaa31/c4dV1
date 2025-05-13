import { Observable, throwError } from "rxjs";
import { mergeMap } from "rxjs/operators";
import { HttpClient, HttpHeaders } from "@angular/common/http";
import { Injectable } from "@angular/core";
import { catchError } from "rxjs/operators";

interface EmailResponse {
  data: {
    id: number;
    attributes: {
      email: string;
      createdAt: string;
      updatedAt: string;
      publishedAt: string;
    };
  }[];
}

@Injectable({
  providedIn: "root",
})
export class SendDataService {
  api_key =
    "41a4e0e6fc09046c4f3cac4806286190da111a2a707960ec35d4bf008d1cdc49eb869b09acb046bf6e2f06108ffc8de04a0f0f4d8eda93fc6fb727081df056a0afb9841e40bf9e6c6af4ae13ec7dbf8ace508b7a7b9b8382759880abd225ff55756c56c2da18b2863ea4449b2eb5164f7b773aa65bd8f0a1f3e6447aa9ff72d6";
  apiUrl = "http://localhost:1337/api";

  header = new HttpHeaders({
    "Content-Type": "application/json",
    Authorization: `Bearer ${this.api_key}`,
  });

  constructor(private http: HttpClient) {}

  ngOnInit(): void {
    const header = new HttpHeaders({
      "Content-Type": "application/json",
      Authorization: `Bearer ${this.api_key}`,
    });
  }

  getRegisteredEmails(): Observable<EmailResponse> {
    return this.http.get<EmailResponse>(this.apiUrl + "/newsletters", {
      headers: this.header,
    });
  }

  sendNewslettersData(data: any): Observable<any> {
    const requestData = { data: data };
    console.log("requestData de la newsletter", requestData);

    return this.getRegisteredEmails().pipe(
      mergeMap((response) => {
        const registeredEmails = response.data;

        const isEmailAlreadyRegistered = registeredEmails.some(
          (item) => item.attributes.email === data.email
        );
        if (isEmailAlreadyRegistered) {
          return throwError("Email is already registered.");
        } else {
          return this.http.post(this.apiUrl + "/newsletters", requestData, {
            headers: this.header,
          });
        }
      })
    );
  }
sendUnsolicitedApplicationData(data: any): Observable<any> {
  const requestData = { data: data };

  return this.http.post(this.apiUrl + "/spontaneous-applications", requestData, {
    headers: this.header,
  }).pipe(
    catchError((error) => {
      console.error("Error sending unsolicited application data", error);
      return throwError(
        () =>
          new Error("Échec de l'envoi de la candidature spontanée. Veuillez réessayer plus tard.")
      );
    })
  );
}

  sendContactData(data: any): Observable<any> {
    const requestData = { data: data };
    console.log("requestData", requestData);

    return this.http
      .post(this.apiUrl + "/contact-forms", requestData, {
        headers: this.header,
      })
      .pipe(
        catchError((error) => {
          console.error("Error sending contact data", error);
          return throwError(
            () =>
              new Error("Failed to send contact data. Please try again later.")
          );
        })
      );
  }

  // sendCandidatureData(data: any): Observable<any> {
  //   return this.http.post(this.apiUrl + '/formulaire-candidatures', data);
  // }

  // sendCandidatureFile(data: any): Observable<any> {
  //   const formData = new FormData();

  //   for (const key in data) {
  //     if (Object.prototype.hasOwnProperty.call(data, key)) {
  //       if (key === 'curriculum_vitae' || key === 'lettre_motivation' || key === 'video_candidat') {
  //         // Si la clé correspond à un fichier, ajoutez-le à FormData
  //         formData.append(key, data[key], data[key].name);
  //       } else {
  //         // Sinon, ajoutez-le comme champ texte
  //         formData.append(key, data[key]);
  //       }
  //     }
  //   }

  //   return this.http.post('http://localhost:1337/api/formulaire-candidatures', formData);
  // }
}
