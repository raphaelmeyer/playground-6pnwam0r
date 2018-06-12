#define CATCH_CONFIG_MAIN
#include <catch2/catch.hpp>

#include "flux_capacitor/flux_capacitor.h"

namespace {

TEST_CASE("capacitance should flux", "[flux_capacitor]") {
  FluxCapacitor const flux_capacitor;
  REQUIRE(flux_capacitor.activate());
  REQUIRE(flux_capacitor.jump());
}

}
