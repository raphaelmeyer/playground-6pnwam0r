#include <time_travel/time_travel.h>
#include <flux_capacitor/flux_capacitor.h>

#include <memory>

void bar(TimeTravel const & time_travel) {
  time_travel.jump();
}

void foo() {
  FluxCapacitor const flux_capacitor;
  bar(flux_capacitor);

  flux_capacitor.activate();
}
