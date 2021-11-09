import 'package:flutter/material.dart';
import 'package:values/values.dart';
import 'package:widgets/text.dart';

class InfoDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Function onPressed;

  InfoDialog({this.title, this.description, this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      //elevation: 10,
      //backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  dialogContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child:
                  AppText(
                    text:description,
                    textStyle:
                    Style.fontNormal(color: AppColors.brownishGray, size: 16.0),
                    maxLines: 20,
                    softWrap: true,
                    textAlign: TextAlign.center,
                    minFontSize: 14,
                  ),
                ),
              ),
            ],
          ),
          FlatButton(
              child: AppText(
                text: buttonText,
                textStyle:
                Style.fontNormal(color: AppColors.green, size: 18.0),
                maxLines: 20,
                softWrap: true,
                textAlign: TextAlign.center,
                minFontSize: 14,
              ),
              onPressed: onPressed


          ),
        ],
      ),
    );
  }
}
