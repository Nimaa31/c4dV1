import { Component } from '@angular/core';

@Component({
  selector: 'app-our-engagements',
  templateUrl: './our-engagements.component.html',
  styleUrls: ['./our-engagements.component.scss']
})
export class OurEngagementsComponent {
  transformationTitleText = 'Soyez le moteur de votre <span class="text-[#52B6DE]">transformation</span>'
  agilityTitleText = `Faites un pari sur <span class="text-[#52B6DE]">l’agilité technologique</span>`
  public cardItems = [
    {
      'id': 1,
      'title': 'DATA & IA',
      'subtitle': 'Faites parler vos données ',
      'text': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?',
      'imgSrc': '/assets/data.svg',
      'buttonImage' :'url(/assets/btn-bottom.svg)',
      'panelTitle': 'DATA & IA',
      'panelSubtitle': 'Faites parler vos données',
      'panelText': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?'
    },
    {
      'id': 2,
      'title': 'Cloud Management',
      'subtitle': 'Développez vos infrastructures',
      'text': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?',
      'imgSrc': '/assets/cm.svg',
      'buttonImage' :'url(/assets/btn-bottom.svg)',
      'panelTitle': 'Cloud Management',
      'panelSubtitle': 'Développez vos infrastructures',
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
      'panelSubtitle': 'Repensez votre espace de travail',
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
      'panelSubtitle' : 'Réinventez votre business',
      'panelText': 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Corrupti molestias, est sint optio quidem eaque unde, libero ipsam laboriosam tempora repellat voluptas rerum accusamus facilis possimus excepturi eum cumque eius?'
    }
  ]
}
