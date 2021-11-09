class ConversationInfo {
  String? _id;
  String? _lastMessage;
  List<String>? _members;
  String? _topic;
  int? _modifiedAt;

  ConversationInfo(
      {String? id,
        String? lastMessage,
        List<String>? members,
        String? topic,
        int? modifiedAt}) {
    this._id = id;
    this._lastMessage = lastMessage;
    this._members = members;
    this._topic = topic;
    this._modifiedAt = modifiedAt;
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get lastMessage => _lastMessage;
  set lastMessage(String? lastMessage) => _lastMessage = lastMessage;
  List<String>? get members => _members;
  set members(List<String>? members) => _members = members;
  String? get topic => _topic;
  set topic(String? topic) => _topic = topic;
  int? get modifiedAt => _modifiedAt;
  set modifiedAt(int? modifiedAt) => _modifiedAt = modifiedAt;

  ConversationInfo.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _lastMessage = json['last_message'];
    _members = json['members'].cast<String>();
    _topic = json['topic'];
    _modifiedAt = json['modified_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['last_message'] = this._lastMessage;
    data['members'] = this._members;
    data['topic'] = this._topic;
    data['modified_at'] = this._modifiedAt;
    return data;
  }
}