#include "colors.h"

bool Colors::update(std::variant<Red, Yellow, Green> color) const {
  return std::get_if<Yellow>(&color) != nullptr;
}
