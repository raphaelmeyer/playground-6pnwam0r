#include <catch2/catch.hpp>

#include "colors.h"

namespace {

TEST_CASE("there should be colors", "[display]" ) {
  Colors const colors;
  REQUIRE(colors.update());
}

}
