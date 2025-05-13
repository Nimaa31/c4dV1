import {
  animate,
  state,
  style,
  transition,
  trigger,
} from "@angular/animations";

export const FadeAnimation = trigger("fade", [
  state("visible", style({ opacity: 1, pointerEvents: "auto" })),
  state("hidden", style({ opacity: 0, pointerEvents: "none" })),
]);

export const AccordionDropDownAnimation = trigger("dropDownAccordion", [
  state("true", style({ height: "*" })),
  state("false", style({ height: "48px" })),
  transition("false => true", [
    style({ height: "48px" }),
    animate("300ms ease-in-out"),
  ]),
  transition("true => false", [animate("300ms ease-in-out")]),
]);
