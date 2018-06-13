#include <time_travel/time_travel.h>
#include <flux_capacitor/flux_capacitor.h>

#include <memory>

void foo(TimeTravel const & time_travel) {
  time_travel.jump();
}

int main() {
  FluxCapacitor const flux_capacitor;
  foo(flux_capacitor);

  flux_capacitor.activate();
}
