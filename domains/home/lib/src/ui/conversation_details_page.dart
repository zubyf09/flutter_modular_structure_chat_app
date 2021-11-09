import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:values/values.dart';
import 'package:widgets/loading.dart';

import '../../home.dart';

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
              Text("Test")
                  :(state is ConversationDetailError)? Center(
                child: Text(CString.conversationEmpty),
              ):Container();
            }
        )
    );
  }
}
