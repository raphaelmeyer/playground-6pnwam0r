#include "time_travel/time_travel.h"

#include <memory>

class Capacitor;
class Flux;

class FluxCapacitor : public TimeTravel {
public:
  FluxCapacitor();
  ~FluxCapacitor();

  virtual bool jump() const;
  bool activate() const;

private:
  std::unique_ptr<Capacitor const> capacitor;
  std::unique_ptr<Flux const> flux;
};
