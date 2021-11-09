import 'package:cached_network_image/cached_network_image.dart';
import 'package:core/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:values/values.dart';

import 'image_loading_shimmer.dart';

class NetworkImageService extends StatelessWidget {
  final String imageUrl;
  final double imageWidth, imageHeight;
  final bool isBannerImage;
  final Widget errorWidget;
  final ColorFilter colorFilter;
  final double radius;
  final bool isSuperMarket;
  BoxFit fit;

  NetworkImageService({this.imageUrl,
    this.imageWidth,
    this.imageHeight,
    this.radius,
    this.colorFilter,
    this.isBannerImage = false,
    this.fit = BoxFit.cover,
    this.isSuperMarket = false,
    this.errorWidget});


  @override
  Widget build(BuildContext context) {
    return !isNullOrEmpty(imageUrl)
        ? CachedNetworkImage(
      imageUrl: imageUrl,
      imageBuilder: (context, imageProvider) =>
          Container(
            decoration: isBannerImage
                ? BoxDecoration(
              borderRadius: isSuperMarket ? BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0)) : BorderRadius.only(
                  topLeft: Radius.circular(radius ?? 0),
                  topRight: Radius.circular(radius ?? 0),
                  bottomLeft: Radius.circular(radius ?? 0),
                  bottomRight: Radius.circular(radius ?? 0)),
              image: DecorationImage(
                  image: imageProvider,
                  fit: fit,
                  colorFilter: colorFilter),
            )
                : BoxDecoration(
              image: DecorationImage(
                  image: imageProvider, colorFilter: colorFilter)
              ,
            ),
          ),
      alignment: Alignment.center,
      placeholder: (context, url) =>
          ImageLoadingShimmer(
            height: imageHeight,
            width: imageWidth,
          ),
      errorWidget: (context, url, error) =>
      errorWidget ?? buildErrorWidget(),
    )
        : errorWidget ?? buildErrorWidget
      (
    );
  }

  Widget buildErrorWidget() {
    return Container(
      width: imageWidth,
      height: imageHeight,
      child: SvgPicture.asset(Assets.errorImage),
    );
  }
}

