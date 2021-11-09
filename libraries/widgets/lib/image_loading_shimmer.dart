import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageLoadingShimmer extends StatelessWidget {
  final width;
  final height;

  ImageLoadingShimmer({this.width = 50.0, this.height = 40.0});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        enabled: true,
        child: Container(
          width: width,
          height: height,
          color: Colors.white,
        ));
  }
}
