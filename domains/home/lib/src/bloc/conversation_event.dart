part of 'conversation_bloc.dart';

@immutable
abstract class ConversationEvent {
  String get search => search;
}
class GetConversations implements ConversationEvent{
  final String search;
  GetConversations({required this.search});
}
