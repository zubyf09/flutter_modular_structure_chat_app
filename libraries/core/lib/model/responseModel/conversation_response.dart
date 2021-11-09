import 'package:core/model/conversation_info.dart';

class ConversationsResponse {
  List<ConversationInfo>? _conversations;

  ConversationsResponse({required List<ConversationInfo> conversations }) {
    this._conversations = conversations;
  }

  List<ConversationInfo>? get conversations => _conversations;
  set conversations(List<ConversationInfo>? conversations) => _conversations = conversations;

  ConversationsResponse.fromJson(List<dynamic> json) {
    _conversations = json
        .map((e) => ConversationInfo.fromJson(e))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['conversations'] = this._conversations;

    return data;
  }
}