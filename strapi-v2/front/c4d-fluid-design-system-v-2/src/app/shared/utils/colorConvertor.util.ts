export function convertHexToRgba(
  inputBackgroundColor: string,
  backgroundOpacity: boolean | number
): string {
  let hex = inputBackgroundColor.trim();
  if (hex.startsWith("#")) {
    hex = hex.slice(1);
  }

  let r: number, g: number, b: number, o: number;

  if (typeof backgroundOpacity === "boolean") {
    o = backgroundOpacity ? 0.12 : 1;
  } else {
    o = backgroundOpacity / 100;
  }

  if (hex.length === 3) {
    r = parseInt(hex.charAt(0) + hex.charAt(0), 16);
    g = parseInt(hex.charAt(1) + hex.charAt(1), 16);
    b = parseInt(hex.charAt(2) + hex.charAt(2), 16);
  } else if (hex.length === 6) {
    r = parseInt(hex.slice(0, 2), 16);
    g = parseInt(hex.slice(2, 4), 16);
    b = parseInt(hex.slice(4, 6), 16);
  } else {
    return "";
  }

  return `rgba(${r}, ${g}, ${b}, ${o})`;
}
