#include "time_machine.h"

#include <iostream>

int main() {
  TimeMachine const time_machine;
  time_machine.run();

  std::cout << "whoooosh!\n";
}
