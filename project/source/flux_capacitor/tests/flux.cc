#include <catch2/catch.hpp>

#include "flux.h"

namespace {

TEST_CASE("flux should be released", "[flux_capacitor]") {
  Flux const flux;
  REQUIRE(flux.release());
}

}
