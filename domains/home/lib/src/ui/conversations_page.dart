import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:widgets/widgets.dart';

class ConversationsPage extends StatefulWidget {
  const ConversationsPage({Key? key}) : super(key: key);

  @override
  _ConversationState createState() => _ConversationState();
}

class _ConversationState extends State<ConversationsPage> {
  late ConversationBloc conversationBloc;

  @override
  void initState() {
    super.initState();
    conversationBloc =  BlocProvider.of<ConversationBloc>(context);
    fetchConversation();
  }

  fetchConversation(){
    conversationBloc.add(GetConversations());
  }

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

              ),
      body:BlocBuilder<ConversationBloc, ConversationState>(
          bloc: conversationBloc,
          builder: (context, state) {
            return (state is ConversationLoading)?const Center(child: LoadingDots(),):
            (state is ConversationLoaded)?ConversationView(conversationsInfoList: state.conversationResponse.conversations)
                :(state is ConversationError)?const Center(
              child: Text('No Data Found'),
            ):Container();
          }
      ),
    );
  }
}


class ConversationView extends StatelessWidget {
  final List<ConversationInfo>? conversationsInfoList;
  const ConversationView({Key? key,required this.conversationsInfoList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: conversationsInfoList!.length,
        itemBuilder: (context,index){
          return  Card(
            elevation: 5,
            child: ListTile(
              leading: const Icon(Icons.album),
              title: Text(conversationsInfoList![index].lastMessage!),
              subtitle: Text(conversationsInfoList![index].topic!),
              onTap: (){

              },
            ),
          );
        });
  }

  movePage(BuildContext context){

  }
}

