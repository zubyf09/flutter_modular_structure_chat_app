class User {
  String _token;
  String _sid;
  String _payfortUrl;
  String _mobile;
  String _countryCode;
  String _email;
  String _name;
  String _fcmTopic;
  String _mqttTopic;
  String _googleMapKeyMqtt;
  MmjCard _mmjCard;
  MmjCard _identityCard;
  dynamic _requesterId;
  dynamic _zendeskId;

  User(
      {String token,
        String sid,
        String payfortUrl,
        String mobile,
        String countryCode,
        String email,
        String name,
        String fcmTopic,
        String mqttTopic,
        String googleMapKeyMqtt,
        MmjCard mmjCard,
        MmjCard identityCard,
        dynamic requesterId,
        dynamic zendeskId}) {
    this._token = token;
    this._sid = sid;
    this._payfortUrl = payfortUrl;
    this._mobile = mobile;
    this._countryCode = countryCode;
    this._email = email;
    this._name = name;
    this._fcmTopic = fcmTopic;
    this._mqttTopic = mqttTopic;
    this._googleMapKeyMqtt = googleMapKeyMqtt;
    this._mmjCard = mmjCard;
    this._identityCard = identityCard;
    this._requesterId = requesterId;
    this._zendeskId = zendeskId;
  }

  String get token => _token;
  set token(String token) => _token = token;
  String get sid => _sid;
  set sid(String sid) => _sid = sid;
  String get payfortUrl => _payfortUrl;
  set payfortUrl(String payfortUrl) => _payfortUrl = payfortUrl;
  String get mobile => _mobile;
  set mobile(String mobile) => _mobile = mobile;
  String get countryCode => _countryCode;
  set countryCode(String countryCode) => _countryCode = countryCode;
  String get email => _email;
  set email(String email) => _email = email;
  String get name => _name;
  set name(String name) => _name = name;
  String get fcmTopic => _fcmTopic;
  set fcmTopic(String fcmTopic) => _fcmTopic = fcmTopic;
  String get mqttTopic => _mqttTopic;
  set mqttTopic(String mqttTopic) => _mqttTopic = mqttTopic;
  String get googleMapKeyMqtt => _googleMapKeyMqtt;
  set googleMapKeyMqtt(String googleMapKeyMqtt) =>
      _googleMapKeyMqtt = googleMapKeyMqtt;
  MmjCard get mmjCard => _mmjCard;
  set mmjCard(MmjCard mmjCard) => _mmjCard = mmjCard;
  MmjCard get identityCard => _identityCard;
  set identityCard(MmjCard identityCard) => _identityCard = identityCard;
  dynamic get requesterId => _requesterId;
  set requesterId(dynamic requesterId) => _requesterId = requesterId;
  dynamic get zendeskId => _zendeskId;
  set zendeskId(dynamic zendeskId) => _zendeskId = zendeskId;

  User.fromJson(Map<String, dynamic> json) {
    _token = json['token'];
    _sid = json['sid'];
    _payfortUrl = json['payfortUrl'];
    _mobile = json['mobile'];
    _countryCode = json['countryCode'];
    _email = json['email'];
    _name = json['name'];
    _fcmTopic = json['fcmTopic'];
    _mqttTopic = json['mqttTopic'];
    _googleMapKeyMqtt = json['googleMapKeyMqtt'];
    _mmjCard =
    json['mmjCard'] != null ? new MmjCard.fromJson(json['mmjCard']) : null;
    _identityCard = json['identityCard'] != null
        ? new MmjCard.fromJson(json['identityCard'])
        : null;
    _requesterId = json['requester_id'];
    _zendeskId = json['zendeskId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this._token;
    data['sid'] = this._sid;
    data['payfortUrl'] = this._payfortUrl;
    data['mobile'] = this._mobile;
    data['countryCode'] = this._countryCode;
    data['email'] = this._email;
    data['name'] = this._name;
    data['fcmTopic'] = this._fcmTopic;
    data['mqttTopic'] = this._mqttTopic;
    data['googleMapKeyMqtt'] = this._googleMapKeyMqtt;
    if (this._mmjCard != null) {
      data['mmjCard'] = this._mmjCard.toJson();
    }
    if (this._identityCard != null) {
      data['identityCard'] = this._identityCard.toJson();
    }
    data['requester_id'] = this._requesterId;
    data['zendeskId'] = this._zendeskId;
    return data;
  }
}

class MmjCard {
  dynamic _url;
  bool _verified;

  MmjCard({dynamic url, bool verified}) {
    this._url = url;
    this._verified = verified;
  }

  dynamic get url => _url;
  set url(dynamic url) => _url = url;
  bool get verified => _verified;
  set verified(bool verified) => _verified = verified;

  MmjCard.fromJson(Map<String, dynamic> json) {
    _url = json['url'];
    _verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this._url;
    data['verified'] = this._verified;
    return data;
  }
}