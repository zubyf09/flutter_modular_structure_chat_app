part of 'conversation_detail_bloc.dart';

@immutable
abstract class ConversationDetailEvent {
}
class GetConversationDetail implements ConversationDetailEvent{
  final String id;
  GetConversationDetail({required this.id});
}
