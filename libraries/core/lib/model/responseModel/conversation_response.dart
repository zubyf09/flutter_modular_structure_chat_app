import 'package:core/model/conversation_info.dart';

class ConversationsResponse {
  List<ConversationInfo>? _conversations;

  ConversationsResponse({required List<ConversationInfo> conversations }) {
    this._conversations = conversations;
  }

  List<ConversationInfo>? get conversations => _conversations;
  set conversations(List<ConversationInfo>? conversations) => _conversations = conversations;

  ConversationsResponse.fromJson(Map<String, dynamic> json) {
    _conversations = json.entries.first.value
        .map((e) => ConversationInfo.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['conversations'] = this._conversations;

    return data;
  }
}