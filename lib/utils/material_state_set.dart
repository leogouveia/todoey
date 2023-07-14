import 'package:flutter/material.dart';

extension MaterialStateSet on Set<MaterialState> {
  bool get isSelected => contains(MaterialState.selected);
  bool get isHovered => contains(MaterialState.hovered);
}
