import 'package:flutter/material.dart';

class ConversationDetailsPage extends StatefulWidget {
  final dynamic data;
  ConversationDetailsPage({Key? key,required this.data}) : super(key: key);

  @override
  _ConversationDetailsPageState createState() => _ConversationDetailsPageState();
}

class _ConversationDetailsPageState extends State<ConversationDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.red,
      body: Container()
    );
  }
}
