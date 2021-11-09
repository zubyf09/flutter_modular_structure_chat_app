class AddAddressRequest {
  String _addLine1;
  String _addLine2;
  String _city;
  String _country;
  String _flatNumber;
  String _landmark;
  double _latitude;
  double _longitude;
  String _state;
  String _taggedAs;
  String _userId;

  AddAddressRequest(
      {String addLine1,
        String addLine2,
        String city,
        String country,
        String flatNumber,
        String landmark,
        double latitude,
        double longitude,
        String state,
        String taggedAs,
        String userId}) {
    this._addLine1 = addLine1;
    this._addLine2 = addLine2;
    this._city = city;
    this._country = country;
    this._flatNumber = flatNumber;
    this._landmark = landmark;
    this._latitude = latitude;
    this._longitude = longitude;
    this._state = state;
    this._taggedAs = taggedAs;
    this._userId = userId;
  }

  String get addLine1 => _addLine1;
  set addLine1(String addLine1) => _addLine1 = addLine1;
  String get addLine2 => _addLine2;
  set addLine2(String addLine1) => _addLine2 = addLine1;
  String get city => _city;
  set city(String city) => _city = city;
  String get country => _country;
  set country(String country) => _country = country;
  String get flatNumber => _flatNumber;
  set flatNumber(String flatNumber) => _flatNumber = flatNumber;
  String get landmark => _landmark;
  set landmark(String landmark) => _landmark = landmark;
  double get latitude => _latitude;
  set latitude(double latitude) => _latitude = latitude;
  double get longitude => _longitude;
  set longitude(double longitude) => _longitude = longitude;
  String get state => _state;
  set state(String state) => _state = state;
  String get taggedAs => _taggedAs;
  set taggedAs(String taggedAs) => _taggedAs = taggedAs;
  String get userId => _userId;
  set userId(String userId) => _userId = userId;

  AddAddressRequest.fromJson(Map<String, dynamic> json) {
    _addLine1 = json['addLine1'];
    _addLine2 = json['addLine2'];
    _city = json['city'];
    _country = json['country'];
    _flatNumber = json['flatNumber'];
    _landmark = json['landmark'];
    _latitude = json['latitude'];
    _longitude = json['longitude'];
    _state = json['state'];
    _taggedAs = json['taggedAs'];
    _userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addLine1'] = this._addLine1;
    data['addLine2'] = this._addLine2;
    data['city'] = this._city;
    data['country'] = this._country;
    data['flatNumber'] = this._flatNumber;
    data['landmark'] = this._landmark;
    data['latitude'] = this._latitude;
    data['longitude'] = this._longitude;
    data['state'] = this._state;
    data['taggedAs'] = this._taggedAs;
    data['userId'] = this._userId;
    return data;
  }
}