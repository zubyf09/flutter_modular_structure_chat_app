
class MessageInfo {
  String? _id;
  String? _message;
  int? _modifiedAt;
  String? _sender;
  bool isAutoMessage = false;

  MessageInfo({String? id, String? message, int? modifiedAt, String? sender,this.isAutoMessage =false}) {
    this._id = id;
    this._message = message;
    this._modifiedAt = modifiedAt;
    this._sender = sender;
  }

  String? get id => _id;
  set id(String? id) => _id = id;
  String? get message => _message;
  set message(String? message) => _message = message;
  int? get modifiedAt => _modifiedAt;
  set modifiedAt(int? modifiedAt) => _modifiedAt = modifiedAt;
  String? get sender => _sender;
  set sender(String? sender) => _sender = sender;

  MessageInfo.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _message = json['message'];
    _modifiedAt = json['modified_at'];
    _sender = json['sender'];
    isAutoMessage = false;


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['message'] = this._message;
    data['modified_at'] = this._modifiedAt;
    data['sender'] = this._sender;
    return data;
  }
}