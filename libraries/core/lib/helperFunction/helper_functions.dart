import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:widgets/widgets.dart';
import 'dart:math' show cos, sqrt, asin;
import 'package:dio/dio.dart';

bool isValidResponse(Response response) {
  return (response != null ||
      response.statusCode == 200 ||
      response.data != null);
}
