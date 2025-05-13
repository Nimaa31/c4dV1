import {
  animate,
  query,
  sequence,
  stagger,
  style,
  transition,
  trigger,
} from "@angular/animations";

export const MenuDropDownAnimation = trigger("dropDownMenu", [
  transition("void => true", [
    style({ opacity: 0, height: 0, overflow: "hidden" }),
    query(".menu-item", [
      style({ opacity: 0, transform: "translateY(-50px)" }),
    ]),
    animate(
      "300ms ease-in-out",
      style({ opacity: 1, height: "*", overflow: "hidden" })
    ),
    query(".menu-item", [
      stagger(50, [
        animate("300ms ease-in-out", style({ opacity: 1, transform: "none" })),
      ]),
    ]),
  ]),
  transition("* => void", [
    query(".menu-item", [
      stagger(50, [
        animate(
          "300ms ease-in-out",
          style({ opacity: 0, transform: "translateY(-50px)" })
        ),
      ]),
    ]),
    animate(
      "300ms ease-in-out",
      style({ opacity: 0, height: 0, overflow: "hidden" })
    ),
  ]),
]);
