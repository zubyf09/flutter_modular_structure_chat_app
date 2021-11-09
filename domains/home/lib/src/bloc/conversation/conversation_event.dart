part of 'conversation_bloc.dart';

@immutable
abstract class ConversationEvent {
}
class GetConversations implements ConversationEvent{
  GetConversations();
}
