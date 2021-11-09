import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppText extends StatelessWidget {
  final String text;
  final int maxLines;
  final double minFontSize;
  final TextStyle textStyle;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final bool softWrap;
  final Function onTap;
  final bool inkWell;

  const AppText(
      {Key key,
      this.text,
      this.textStyle,
      this.maxLines,
      this.textAlign = TextAlign.center,
      this.overflow = TextOverflow.ellipsis,
      this.minFontSize = 10,
      this.softWrap,
        this.inkWell = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return
      Text(
        this.text ?? "",
        maxLines: maxLines,
        overflow: overflow,
        softWrap: softWrap ?? false,
        style: textStyle,
        textAlign: this.textAlign ?? TextAlign.center,
      );
  }
}
