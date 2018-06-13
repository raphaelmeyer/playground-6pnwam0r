#include "time_machine.h"

#include <iostream>
#include <string_view>

int main() {
  TimeMachine const time_machine;
  time_machine.run();

  using namespace std::literals;
  auto const sound = "whoooosh!"sv;

  std::cout << sound << "\n";
}
