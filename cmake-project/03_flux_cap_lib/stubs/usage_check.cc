#include <time_travel/time_travel.h>
#include <flux_capacitor/flux_capacitor.h>

#include <memory>

class Foo {};

void foo() {
  FluxCapacitor const flux_capacitor;
  flux_capacitor.jump();

  auto dummy = std::make_unique<Foo>();
}
