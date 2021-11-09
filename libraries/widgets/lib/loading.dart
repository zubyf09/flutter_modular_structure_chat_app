import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:values/values.dart';

class LoadingDots extends StatelessWidget {
  final double size;
  final Color color;
  final isCircularLoading;

  const LoadingDots(
      {Key key, this.color, this.size = 30.0, this.isCircularLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isCircularLoading
        ? Container(
            child: SpinKitRing(
              color: color ?? AppColors.green,
              size: size,
              lineWidth: 4,
            ),
          )
        : Container(
            child:
                SpinKitThreeBounce(color: color ?? AppColors.green, size: size),
          );
  }
}
