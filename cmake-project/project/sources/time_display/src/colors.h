#pragma once

#include <variant>

class Red {};
class Yellow {};
class Green {};

class Colors {
public:
  bool update(std::variant<Red, Yellow, Green> color) const;
};
