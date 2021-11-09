import 'dart:io';
import 'package:flutter/cupertino.dart';

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getScreenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

int getImageHeight(BuildContext context, double percent) {
  return (MediaQuery.of(context).size.height * percent).toInt();
}

int getImageWidth(BuildContext context, double percent) {
  return (MediaQuery.of(context).size.width * percent).toInt();
}
double notchBottomPadding(BuildContext context) {
  double padding = MediaQuery.of(context).viewPadding.bottom;
  if (Platform.isIOS)
    return padding / 2;
  else {
    if (padding == 0) {
      padding = getScreenHeight(context) * 0.01;
    } else
      padding = padding / 2;
    return padding;
  }
}
