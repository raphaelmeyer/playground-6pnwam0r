#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>

#include "time_display/display.h"

#include "time_travel/time_travel.h"

namespace {

class TimeTravelStub : public TimeTravel {
public:
  virtual bool jump() const { return true; }
};

TEST_CASE("display should show the present time in green", "[display]" ) {
  TimeTravelStub const time_travel;
  Display const display;
  REQUIRE(display.update(time_travel));
}

TEST_CASE("display should show the destination time in red", "[display]" ) {
  TimeTravelStub const time_travel;
  Display const display;
  REQUIRE(display.update(time_travel));
}

TEST_CASE("display should show the departure time in yellow", "[display]" ) {
  TimeTravelStub const time_travel;
  Display const display;
  REQUIRE(display.update(time_travel));
}

}
