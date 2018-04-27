#include "flux_capacitor/flux_capacitor.h"

#include "flux.h"
#include "capacitor.h"

bool FluxCapacitor::jump() const {
  Capacitor const capacitor;
  capacitor.charge();

  return true;
}

bool FluxCapacitor::activate() const {
  Flux const flux;
  flux.release();

  return true;
}
