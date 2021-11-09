import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:widgets/widgets.dart';
import 'dart:math' show cos, sqrt, asin;
import 'package:dio/dio.dart';

var successCode = [201, 200, 204, 203, 202];
var serverDownCode = [500, 501, 502, 503, 504];

double getChildHeight({GlobalKey key, BuildContext context}) {
  try {
    RenderBox _cardCash = key.currentContext.findRenderObject();
    return _cardCash.size.height / getScreenHeight(context);
  } catch (e) {
    return 0.0;
  }
}

Widget showDialogMessage({String message, BuildContext context,bool isPopScreen=false}) {
  SchedulerBinding.instance.addPostFrameCallback((_) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return InfoDialog(
            description: message,
            onPressed: () => isPopScreen?onOkPressPop(context):onOkPress(context),
            buttonText: "OK",
          );
        });
  });
}

void onOkPress(BuildContext context) {
  Navigator.of(context).pop();
}
void onOkPressPop(BuildContext context) {
  Navigator.of(context).pop();
  Navigator.of(context).pop(true);
}

void popBackSheet(BuildContext context) {
  Navigator.of(context).pop();
}

String getCleanPhoneNo({String phoneNo}) {
  if (phoneNo.startsWith('0')) {
    var re = RegExp(r'\d{1}');
    return phoneNo.replaceFirst(re, '');
  }
  return phoneNo;
}

dynamic getDecimalAmount(dynamic amount) {
  if (amount != null) {
    if (amount is String) {
      return double.parse(amount).toStringAsFixed(2);
    } else
      return amount.toStringAsFixed(2);
  } else
    return "";
}

String getAmount({String amount, String currency}) {
  return amount == "null"
      ? "0.00 AED"
      : currency == "null"
      ? double.parse(amount).toStringAsFixed(2) + " AED"
      : "${double.parse(amount).toStringAsFixed(2) + " " + currency}";
}



popToHome(BuildContext context) {
  Navigator.of(context).popUntil((route) => route.isFirst);
}

popBack(BuildContext context) {
  SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
    Navigator.of(context).pop();
  });
}


bool isValidString(String text) {
  if (text == null || text.isEmpty)
    return false;
  else
    return true;
}
bool isSuccessState(int code) {
  return successCode.contains(code);
}

bool isServerDown(int code) {
  return serverDownCode.contains(code);
}

bool isNullOrEmpty(String text) {
  if (text == null || text.isEmpty)
    return true;
  else
    return false;
}


bool isValidResponse(Response response) {
  return (response != null ||
      response.statusCode == 200 ||
      response.data != null);
}
