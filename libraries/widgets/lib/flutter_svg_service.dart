import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgWidget extends StatelessWidget {
  final String imgPath;
  final double imageWidth, imageHeight;
  final Color color;
  BoxFit fit;
  final Alignment alignment;
  SvgWidget({
    this.imgPath,
    this.imageWidth,
    this.imageHeight,
    this.color,
    this.fit = BoxFit.fill,
    this.alignment = Alignment.center
  });
  @override
  Widget build(BuildContext context) {
    return !isNullOrEmpty(imgPath)?
    SvgPicture.asset(imgPath,
      width: imageWidth,
      height: imageHeight,
      fit: fit,
      alignment: alignment,
      color: color,):buildErrorWidget();
  }
  Widget buildErrorWidget() {
    return Container(
      width: imageWidth,
      height: imageHeight,
      child: SvgPicture.asset(""),
    );
  }
}