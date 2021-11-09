//
// import 'package:core/core.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/material.dart';
//
// import 'package:values/values.dart';
//
// import 'flutter_svg_service.dart';
//
// class InternetWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black.withOpacity(0.65),
//       body: Dialog(
//         child: Container(
//           padding: EdgeInsets.only(bottom: 15.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             // To make the card compact
//             children: <Widget>[
//               Container(
//                   margin: EdgeInsets.only(top: 20.0),
//                   alignment: Alignment.center,
//                   child: SvgWidget(imgPath:Assets.noInternet)),
//               Container(
//                   margin: EdgeInsets.only(top: 22.0),
//                   child: AppText(
//                       text: CString.internetDisconnectedTxt,
//                       textAlign: TextAlign.center,
//                       textStyle: Style.archivo(
//                           color: AppColors.green,
//                           size: getScreenWidth(context)*.05,
//                           fontWeight: FontWeight.w400))),
//               Container(
//                   margin: EdgeInsets.only(top: 10.0),
//                   child: AppText(
//                       text: CString.internetDisconnectedTxtH2,
//                       maxLines: 10,
//                       textAlign: TextAlign.center,
//                       textStyle: Style.archivo(
//                           color: AppColors.textGrey,
//                           size: getScreenWidth(context)*.03,
//                           fontWeight: FontWeight.w400))),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
