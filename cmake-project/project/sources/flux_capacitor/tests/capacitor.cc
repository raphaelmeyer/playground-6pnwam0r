#include <catch2/catch.hpp>

#include "capacitor.h"

namespace {

TEST_CASE("capacitance should be charged", "[flux_capacitor]") {
  Capacitor const capacitor;
  REQUIRE(capacitor.charge());
}

}
