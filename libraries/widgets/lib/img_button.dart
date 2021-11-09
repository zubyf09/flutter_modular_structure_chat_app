import 'package:flutter/material.dart';
import 'package:values/values.dart';
import 'package:widgets/text.dart';

class ImgButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final bool disabled;
  final double elevation;
  final double buttonHeight;
  final double width;
  final Color color;
  final TextStyle textStyle;
  final Icon leading;

  const ImgButton(
      {Key key,
      this.textStyle,
      this.label,
      this.onPress,
      this.color,
      this.buttonHeight = 54,
      this.width = 300,
      this.elevation = 1,
      this.leading,
      this.disabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: FlatButton.icon(
            icon: leading,
            color: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            onPressed: onPress,
            label: AppText(
                text: label ?? "",
                textStyle:
                    Style.fontMedium(color: AppColors.white, size: 18.0),
                textAlign: TextAlign.center)));
  }
}
