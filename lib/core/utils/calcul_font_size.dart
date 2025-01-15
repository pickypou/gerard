import 'package:flutter/material.dart';

double calculateFontSize(BuildContext context, {double? fontSize}) {
  final size = MediaQuery.sizeOf(context);
  return fontSize ?? (size.width > 749 ? size.width / 75 : 16);
}

double calculateTitleFontSize(BuildContext context, {double? fontSize}) {
  final size = MediaQuery.sizeOf(context);
  return fontSize ?? (size.width > 749 ? size.width / 25 : 55);
}
