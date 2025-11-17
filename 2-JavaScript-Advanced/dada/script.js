function daysToEscapeWell() {
  const wellHeight = 30;
  const leapUp = 3;
  const slipDown = 2;

  let currentHeight = 0;
  let days = 0;

  while (currentHeight < wellHeight) {
    days++;
    currentHeight += leapUp;

    if (currentHeight >= wellHeight) {
      break;
    }

    currentHeight -= slipDown;
  }

  return days;
}

console.log(daysToEscapeWell());
