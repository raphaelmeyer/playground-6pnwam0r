#include "time_machine.h"

#include "flux_capacitor/flux_capacitor.h"
#include "time_display/display.h"

bool TimeMachine::run() const {
  FluxCapacitor const flux_capacitor;
  Display const display;

  flux_capacitor.activate();
  display.update(flux_capacitor);
  flux_capacitor.jump();

  return true;
}
