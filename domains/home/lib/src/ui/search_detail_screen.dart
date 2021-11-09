// import 'package:core/model/responseModel/searches_response.dart' hide Image;
// import 'package:flutter/material.dart';
//
// class SearchDetailPage extends StatefulWidget {
//   final Album album;
//   const SearchDetailPage({Key? key,required this.album}) : super(key: key);
//
//   @override
//   _SearchDetailPageState createState() => _SearchDetailPageState();
// }
//
// class _SearchDetailPageState extends State<SearchDetailPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//
//           SizedBox(
//               height: 400,
//               child: Image.network(widget.album.image.elementAt(3).text,fit: BoxFit.contain,)),
//
//           const SizedBox(height: 20,),
//
//           Container(
//               margin: const EdgeInsets.all(10),
//               child: Text(widget.album.name,style: const TextStyle(color: Colors.black),)),
//           Container(
//             margin: const EdgeInsets.all(10),
//             child: Text(widget.album.artist,style: const TextStyle(color: Colors.black)),),
//
//           //TODO: add Styling in Text
//
//         ],
//       ),
//     );
//   }
//
//
// }
//
//
//
//
