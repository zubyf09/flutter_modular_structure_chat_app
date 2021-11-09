import 'package:flutter/material.dart';

import 'flutter_svg_service.dart';

class CardButton extends StatelessWidget {
  final Function onPress;
  final double elevation;
  final double height;
  final double width;
  final Color color;
  final String imagePath;
  final Widget childWidget;

  const CardButton(
      {Key key,
      this.onPress,
      this.color,
      this.height = 50,
      this.width = 50,
      this.childWidget,
      this.elevation = 0.5,
      this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Card(
            color: color,
            elevation: elevation,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Container(
                height: height,
                width: width,
                alignment: Alignment.center,
                child: childWidget != null
                    ? childWidget
                    : SvgWidget(imgPath:
                        imagePath,
                        fit: BoxFit.cover,
                      ))));
  }
}
