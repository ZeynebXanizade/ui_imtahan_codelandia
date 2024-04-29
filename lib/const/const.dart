import 'dart:math';

import 'package:flutter/material.dart';

double sizeFunc(BuildContext context, double size) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return size * min(width, height);
}
