import 'package:core/model/conversation_info.dart';

import '../message_info.dart';

class ConversationDetailsResponse {
  late List<MessageInfo> _messages;

  ConversationDetailsResponse({required List<MessageInfo> conversations }) {
    this._messages = conversations;
  }

  List<MessageInfo> get messages => _messages;
  set messages(List<MessageInfo> conversations) => _messages = conversations;

  ConversationDetailsResponse.fromJson(List<dynamic> json) {
    _messages = json!=null?json
        .map((e) => MessageInfo.fromJson(e as Map<String, dynamic>))
        .toList():[];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['messages'] = this._messages;
    return data;
  }
}