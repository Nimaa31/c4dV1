import { Component } from '@angular/core';

@Component({
  selector: 'app-our-services',
  templateUrl: './our-services.component.html',
  styleUrls: ['./our-services.component.scss']
})
export class OurServicesComponent {
  public cardItems = [
    {
      'id': 1,
      'title': 'DATA & IA',
      'subtitle': 'Faites parler vos données ',
      'text': 'Introduisez l’IT prédictive afin d’en tirer le meilleur grâce à une analyse pertinente, une exploitation intelligente et un hébergement fiable de vos données.',
      'imgSrc': '/assets/data.svg',
      'buttonImage' :'url(/assets/btn-bottom.svg)',
      'panelTitle': 'DATA & IA',
      'panelSubtitle' : 'Faites parler vos données',
      'panelText': 'Introduisez l’IT prédictive afin d’en tirer le meilleur grâce à une analyse pertinente, une exploitation intelligente et un hébergement fiable de vos données.'
    },
    {
      'id': 2,
      'title': 'Cloud Management',
      'subtitle': 'Développez vos infrastructures',
      'text': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?',
      'imgSrc': '/assets/cm.svg',
      'buttonImage' :'url(/assets/btn-bottom.svg)',
      'panelTitle': 'Cloud Management',
      'panelSubtitle' : 'Faites parler vos données',
      'panelText': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?'
    },
    {
      'id': 3,
      'title': 'Digital Workplace',
      'subtitle': 'Repensez votre espace de travail',
      'text': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?',
      'imgSrc': '/assets/dw.svg',
      'buttonImage' :'url(/assets/btn-bottom.svg)',
      'panelTitle': 'Digital Workplace',
      'panelSubtitle' : 'Faites parler vos données',
      'panelText': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?'
    },
    {
      'id': 4,
      'title': 'Digital Factory',
      'subtitle': 'Réinventez votre business',
      'text': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?',
      'imgSrc': '/assets/df.svg',
      'buttonImage' :'url(/assets/btn-bottom.svg)',
      'panelTitle': 'Digital Factory',
      'panelSubtitle' : 'Faites parler vos données',
      'panelText': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?'
    }
  ]

}
