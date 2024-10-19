import 'package:flutter/widgets.dart';

extension SizeExtensions on double {
  SizedBox get hPadding => SizedBox(width: this);
  SizedBox get vPadding => SizedBox(height: this);
}
