import {
  animate,
  state,
  style,
  transition,
  trigger,
} from "@angular/animations";

export const sliderBulletAnimation = trigger("sliderBullet", [
  state("true", style({ height: "8px", width: "8px" })),
  state("false", style({ height: "8px", width: "40px" })),
  transition("false => true", [
    style({ height: "48px" }),
    animate("300ms ease-in-out"),
  ]),
  transition("true => false", [animate("300ms ease-in-out")]),
]);
