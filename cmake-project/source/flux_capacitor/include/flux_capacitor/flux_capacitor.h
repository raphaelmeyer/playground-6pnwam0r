#include "time_travel/time_travel.h"

class FluxCapacitor : public TimeTravel {
public:
  virtual bool jump() const;
  bool activate() const;
};
