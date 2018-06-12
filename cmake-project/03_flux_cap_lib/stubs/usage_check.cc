#include <time_travel/time_travel.h>
#include <flux_capacitor/flux_capacitor.h>

#include <memory>

void foo() {
  auto ptr = std::make_unique<FluxCapacitor>();
  ptr->jump();
}
