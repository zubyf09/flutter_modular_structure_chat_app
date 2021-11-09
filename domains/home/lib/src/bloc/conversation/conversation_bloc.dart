import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:core/core.dart';
import 'package:meta/meta.dart';
import 'package:network/repositories/conversation_repository_imp.dart';

part 'conversation_event.dart';
part 'conversation_state.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  ConversationRepositoryImp repository = ConversationRepositoryImp();

  ConversationBloc() : super(ConversationInitial());

  @override
  Stream<ConversationState> mapEventToState(ConversationEvent event) async* {
    if (event is GetConversations) {
      yield* _mapEventGetConversationToState(event);
    }
  }

  Stream<ConversationState> _mapEventGetConversationToState(
      GetConversations event) async* {
    yield ConversationLoading();
    try {
      final response = await repository.getConversations();
      if (response != null) {
        yield ConversationLoaded(conversationResponse: response);
      }  else {
        yield ConversationError(message: Constants.GENERIC_ERROR);
      }
    } catch (e) {
      yield ConversationError(
          message: Constants.GENERIC_ERROR);
    }
  }
}
