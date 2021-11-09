import 'package:core/model/conversation_info.dart';

import '../message_info.dart';

class ConversationDetailsResponse {
  List<MessageInfo>? _messages;

  ConversationDetailsResponse({List<MessageInfo>? conversations }) {
    this._messages = conversations;
  }

  List<MessageInfo>? get messages => _messages;
  set messages(List<MessageInfo>? conversations) => _messages = conversations;

  ConversationDetailsResponse.fromJson(Map<String, dynamic> json) {
    _messages = json.entries.first.value
        .map((e) => MessageInfo.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messages'] = this._messages;

    return data;
  }
}