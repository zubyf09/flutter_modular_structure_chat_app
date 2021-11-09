import 'package:flutter/material.dart';
import 'package:values/values.dart';
import 'package:widgets/text.dart';

class AppButtonIcon extends StatelessWidget {
  final String label;
  final Function onPress;
  final bool disabled;
  final double elevation;
  final double height;
  final double width;
  final Color color;
  final TextStyle textStyle;
  final double borderRadius;
  final Widget iconWidget;

  const AppButtonIcon(
      {Key key,
      this.textStyle,
      this.label,
      this.onPress,
      this.color,
      this.height,
      this.width,
      this.elevation = 1,
      this.borderRadius,
        this.iconWidget,
      this.disabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        //alignment: Alignment.center,
        child: MaterialButton(
            elevation: elevation ?? 0,
            height: height ?? Dimens.buttonHeight,
            minWidth: width ?? 0,
            disabledColor: AppColors.darkGrey,
            color: color ?? AppColors.brownishGray,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius??10.0)
            ),

            onPressed: onPress,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(
                  margin: EdgeInsets.only(right: 6.0),
                  child:iconWidget

              ),
               Text(label ?? "",
                    style: textStyle, textAlign: TextAlign.left),

            ],)

    ));
  }
}
