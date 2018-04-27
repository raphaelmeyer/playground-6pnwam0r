#include "time_display/display.h"

#include "colors.h"
#include "numbers.h"

#include "time_travel/time_travel.h"

bool Display::update(TimeTravel const & time_travel) const {
  Colors const colors;
  Numbers const numbers;

  time_travel.jump();

  colors.update();
  numbers.update();

  return true;
}
