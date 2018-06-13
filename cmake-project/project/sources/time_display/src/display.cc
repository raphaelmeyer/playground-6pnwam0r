#include "time_display/display.h"

#include "colors.h"
#include "numbers.h"

#include "time_travel/time_travel.h"

Display::Display()
  : colors(std::make_unique<Colors const>())
  , numbers(std::make_unique<Numbers const>())
{}

Display::~Display() {}

bool Display::update(TimeTravel const & time_travel) const {
  time_travel.jump();

  std::variant<Red, Yellow, Green> const yellow = Yellow{};

  colors->update(yellow);
  numbers->update();

  return true;
}
