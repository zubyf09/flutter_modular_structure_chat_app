import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:values/values.dart';
import 'package:widgets/loading.dart';

import '../../home.dart';
import 'chat_box.dart';

class ConversationDetailsPage extends StatefulWidget {
  final ConversationInfo conversationInfo;
  const ConversationDetailsPage({Key? key,required this.conversationInfo}) : super(key: key);

  @override
  _ConversationDetailsPageState createState() => _ConversationDetailsPageState();
}

class _ConversationDetailsPageState extends State<ConversationDetailsPage> {

  late ConversationDetailBloc conversationBloc;

  @override
  void initState() {
    super.initState();
    conversationBloc =  BlocProvider.of<ConversationDetailBloc>(context);
    fetchConversation();
  }

  fetchConversation(){
    conversationBloc.add(GetConversationDetail(id: widget.conversationInfo.id!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(CString.conversationDetailHeading),

        ),
        body: BlocBuilder<ConversationDetailBloc, ConversationDetailState>(
            bloc: conversationBloc,
            builder: (context, state) {
              return (state is ConversationDetailLoading)?const Center(child: LoadingDots(),):
              (state is ConversationDetailLoaded)?
              ConversationView(messages: state.conversationResponse.messages,)
                  :(state is ConversationDetailError)? Center(
                child: Text(CString.conversationEmpty),
              ):Container();
            }
        )
    );
  }
}


class ConversationView extends StatefulWidget {
  final List<MessageInfo> messages;

  const ConversationView({Key? key,required this.messages}) : super(key: key);

  @override
  _ConversationViewState createState() => _ConversationViewState();
}

class _ConversationViewState extends State<ConversationView> {

  late ConversationDetailBloc conversationBloc;
  @override
  void initState() {
    super.initState();
    conversationBloc =  BlocProvider.of<ConversationDetailBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: Container(
          height: 80,
          child:const ChatBox()),
      body: StreamBuilder<List<MessageInfo>>(
          stream: conversationBloc.conversationStream,
          builder: (context,state){
            return (state.hasData)? ListView.builder(
                itemCount: state.data!.length,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: (state.data![index].isAutoMessage?Colors.grey.shade200:Colors.blue[200]),
                          ),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: state.data![index].isAutoMessage?CrossAxisAlignment.start:CrossAxisAlignment.end,
                            children: <Widget>[

                              Text(state.data![index].message!,style: const TextStyle(fontWeight: FontWeight.bold),),
                              Text(state.data![index].sender!,style: const TextStyle(fontWeight: FontWeight.w100),),

                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                  // return  ListTile(
                  //   leading: const Icon(Icons.topic),
                  //   title: Text(state.data![index].message!),
                  //   subtitle: Text(state.data![index].sender!),
                  // );
                }):Container(height: 30,color: Colors.blue,);
          }),
    );
  }
}

