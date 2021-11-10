
import 'package:core/core.dart';
import 'package:core/model/message_info.dart';
import 'package:flutter/material.dart';
import '../../home.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({Key? key}) : super(key: key);

  @override
  _ChatBoxState createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {

  late ConversationDetailBloc conversationBloc;
  var myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    conversationBloc =  BlocProvider.of<ConversationDetailBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        padding: const EdgeInsets.only(left: 10,bottom: 10,top: 10),
        height: 60,
        width: double.infinity,
        color: Colors.white,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: (){
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 20, ),
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(
              child: TextField(
                controller: myController,
                decoration: const InputDecoration(
                    hintText: "Write message...",
                    hintStyle: TextStyle(color: Colors.black54),
                    border: InputBorder.none
                ),
              ),
            ),
            const SizedBox(width: 15,),
            FloatingActionButton(
              onPressed: (){
                sendMessage();
              },
              child: const Icon(Icons.send,color: Colors.white,size: 18,),
              backgroundColor: Colors.blue,
              elevation: 0,
            ),
          ],

        ),
      ),
    );
  }


  sendMessage(){

    MessageInfo messageInfo = MessageInfo(
        id: DateTime.now().millisecond.toString(),
        message: myController.text,
        modifiedAt: DateTime.now().millisecond,
        sender: 'Jouni',
        isAutoMessage: true
    );
    conversationBloc.add(SendMessage(messageInfo: messageInfo));
    myController.clear();

  }




}
