part of 'conversation_detail_bloc.dart';

@immutable
abstract class ConversationDetailState {}

class ConversationDetailInitial extends ConversationDetailState {}

class ConversationDetailLoading extends ConversationDetailState{}

class ConversationDetailLoaded extends ConversationDetailState{
  final ConversationDetailsResponse conversationResponse;
  ConversationDetailLoaded({required this.conversationResponse});
}
class ConversationDetailError extends ConversationDetailState{
  final String message;
  ConversationDetailError({required this.message});
}