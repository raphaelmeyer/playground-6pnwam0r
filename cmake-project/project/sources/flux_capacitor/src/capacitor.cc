#include "capacitor.h"

bool Capacitor::charge(double capacity) const {
  return capacity < 0.0;
}
