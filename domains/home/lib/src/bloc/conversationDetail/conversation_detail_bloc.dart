import 'package:core/core.dart';
import 'package:core/model/responseModel/conversation_detail_response.dart';
import 'package:flutter/material.dart';
import 'package:network/repositories/conversation_repository_imp.dart';


part 'conversation_detail_event.dart';
part 'conversation_detail_state.dart';


class ConversationDetailBloc extends Bloc<ConversationDetailEvent, ConversationDetailState> {
  ConversationRepositoryImp repository = ConversationRepositoryImp();

  ConversationDetailBloc() : super(ConversationDetailInitial());

  @override
  Stream<ConversationDetailState> mapEventToState(ConversationDetailEvent event) async* {
    if (event is GetConversationDetail) {
      yield* _mapEventGetConversationToState(event);
    }
  }

  Stream<ConversationDetailState> _mapEventGetConversationToState(
      GetConversationDetail event) async* {
    yield ConversationDetailLoading();
    try {
      final response = await repository.getConversationDetail(event.id);
      if (response != null) {
        yield ConversationDetailLoaded(conversationResponse: response);
      }  else {
        yield ConversationDetailError(message: Constants.GENERIC_ERROR);
      }
    } catch (e) {
      yield ConversationDetailError(
          message: Constants.GENERIC_ERROR);
    }
  }
}
