import { Component, Input } from '@angular/core';
import { SendDataService } from "../../../../../src/app/shared/services/send-data.service";


@Component({
  selector: 'lib-test-component',
  templateUrl: './test-component.component.html',
  styleUrl: './test-component.component.css'
})
export class TestComponentComponent {
  @Input() text = "balba"
  @Input() textColor = "blue"
  @Input() data: any;

  constructor(private sendData: SendDataService) {}

  ngOnInit(): void {
    this.textColor = this.data.BackgroundColor;
  }
}
