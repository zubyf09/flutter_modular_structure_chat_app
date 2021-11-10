part of 'conversation_detail_bloc.dart';

@immutable
abstract class ConversationDetailEvent {
}
class GetConversationDetail implements ConversationDetailEvent{
  final String id;
  GetConversationDetail({required this.id});

}

class SendMessage implements ConversationDetailEvent{
  final MessageInfo messageInfo;
  SendMessage({required this.messageInfo});
}


class SendReplay implements ConversationDetailEvent{
  final MessageInfo messageInfo;
  SendReplay({required this.messageInfo});
}

