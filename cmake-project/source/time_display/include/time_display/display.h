#pragma once

#include <memory>

class TimeTravel;

class Colors;
class Numbers;

class Display {
public:
  Display();
  ~Display();

  bool update(TimeTravel const & time_travel) const;

private:
  std::unique_ptr<Colors const> colors;
  std::unique_ptr<Numbers const> numbers;
};
