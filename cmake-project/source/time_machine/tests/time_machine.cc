#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>

#include "time_machine.h"

namespace {

TEST_CASE("time machine should travel in time", "[time_machine]") {
  TimeMachine const time_machine;
  REQUIRE(time_machine.run());
}

}
