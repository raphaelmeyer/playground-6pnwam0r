#include <catch2/catch.hpp>

#include "colors.h"

namespace {

TEST_CASE("there should be colors", "[display]" ) {
  Colors const colors;
  std::variant<Red, Yellow, Green> const red = Red{};
  std::variant<Red, Yellow, Green> const yellow = Yellow{};
  std::variant<Red, Yellow, Green> const green = Green{};
  REQUIRE(colors.update(yellow));
  REQUIRE(not colors.update(red));
  REQUIRE(not colors.update(green));
}

}
