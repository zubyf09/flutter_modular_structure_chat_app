import 'dart:math';

import 'package:core/core.dart';
import 'package:core/model/responseModel/conversation_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:network/repositories/conversation_repository_imp.dart';
import 'package:rxdart/rxdart.dart';


part 'conversation_detail_event.dart';
part 'conversation_detail_state.dart';


class ConversationDetailBloc extends Bloc<ConversationDetailEvent, ConversationDetailState> {
  ConversationRepositoryImp repository = ConversationRepositoryImp();

  List<MessageInfo> messages = [];
  List<MessageInfo> replayList = [
    MessageInfo(
        id: DateTime.now().millisecond.toString(),
        message: "How I can Help You.",
        modifiedAt: 800,
        sender: 'IDT',
        isAutoMessage: false
    ),
    MessageInfo(
        id: DateTime.now().millisecond.toString(),
        message: "May I know you?",
        modifiedAt: 801,
        sender: 'IDT',
        isAutoMessage: false
    ),

    MessageInfo(
        id: DateTime.now().millisecond.toString(),
        message: "Thank you",
        modifiedAt: 802,
        sender: 'IDT',
        isAutoMessage: false
    ),

    MessageInfo(
        id: DateTime.now().millisecond.toString(),
        message: "Welcome Dear!",
        modifiedAt: 802,
        sender: 'IDT',
        isAutoMessage: false
    ),


  ];
  final BehaviorSubject<List<MessageInfo>> _conversationController = BehaviorSubject<List<MessageInfo>>() ;
  Stream<List<MessageInfo>> get conversationStream => _conversationController.stream;

  ConversationDetailBloc() : super(ConversationDetailInitial());

  @override
  Stream<ConversationDetailState> mapEventToState(ConversationDetailEvent event) async* {
    if (event is GetConversationDetail) {
      yield* _mapEventGetConversationToState(event);
    }
    else if(event is SendMessage){
      yield* _mapEventSendMessageState(event);
    }

  }

  Stream<ConversationDetailState> _mapEventGetConversationToState(
      GetConversationDetail event) async* {
    yield ConversationDetailLoading();
    try {
      final response = await repository.getConversationDetail(event.id);
      if (response != null) {
        messages = response.messages;
        addConversations();

        yield ConversationDetailLoaded(conversationResponse: response);
      }  else {
        yield ConversationDetailError(message: Constants.GENERIC_ERROR);
      }
    } catch (e) {
      yield ConversationDetailError(
          message: Constants.GENERIC_ERROR);
    }
  }

  Stream<ConversationDetailState> _mapEventSendMessageState(
      SendMessage event) async* {

    sendMessage(event.messageInfo);
  }


  void addConversations(){
    _conversationController.sink.add(messages);
  }

  void sendMessage(MessageInfo message){
    messages.add(message);
    _conversationController.sink.add(messages);
    sendReplay();

  }

  void sendReplay() async{
    final _random = new Random();
    await Future.delayed(const Duration(seconds: 2), (){
      var message = replayList[_random.nextInt(replayList.length)];
      messages.add(message);
      _conversationController.sink.add(messages);
    });
  }

}
