part of 'conversation_bloc.dart';

@immutable
abstract class ConversationState {}

class ConversationInitial extends ConversationState {}

class ConversationLoading extends ConversationState{}

class ConversationLoaded extends ConversationState{
  final ConversationsResponse conversationResponse;
  ConversationLoaded({required this.conversationResponse});
}
class ConversationError extends ConversationState{
  final String message;
  ConversationError({required this.message});
}