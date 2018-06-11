#include "flux_capacitor/flux_capacitor.h"

#include "flux.h"
#include "capacitor.h"

FluxCapacitor::FluxCapacitor()
  : capacitor(std::make_unique<Capacitor const>())
  , flux(std::make_unique<Flux const>())
{}

FluxCapacitor::~FluxCapacitor() {}

bool FluxCapacitor::jump() const {
  return capacitor->charge();
}

bool FluxCapacitor::activate() const {
  return flux->release();
}
