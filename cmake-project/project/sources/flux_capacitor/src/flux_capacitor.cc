#include "flux_capacitor/flux_capacitor.h"

#include "flux.h"
#include "capacitor.h"

#include <cmath>

FluxCapacitor::FluxCapacitor()
  : capacitor(std::make_unique<Capacitor const>())
  , flux(std::make_unique<Flux const>())
{}

FluxCapacitor::~FluxCapacitor() {}

bool FluxCapacitor::jump() const {
  return capacitor->charge(std::cyl_neumann(.5, 1.2345));
}

bool FluxCapacitor::activate() const {
  return flux->release();
}
