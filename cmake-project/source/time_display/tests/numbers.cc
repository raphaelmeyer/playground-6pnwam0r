#include <catch2/catch.hpp>

#include "numbers.h"

namespace {

TEST_CASE("there should be numbers", "[display]" ) {
  Numbers const numbers;
  REQUIRE(numbers.update());
}

}
