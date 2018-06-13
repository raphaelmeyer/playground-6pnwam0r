#include "colors.h"

bool Colors::update(std::variant<Red, Yellow, Green> const & color) const {
  return std::holds_alternative<Yellow>(color);
}
