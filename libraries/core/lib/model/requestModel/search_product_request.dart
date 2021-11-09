class SearchProductRequest {
  int _page;
  int _limit;
  String _popularStatus;
  String _language;
  String _productName;
  String _brandName;
  String _zoneId;
  int _storeType;

  SearchProductRequest(
      {int page,
      int limit,
      String popularStatus,
      String language,
      String productName,
      String brandName,
      String zoneId,
      int storeType}) {
    this._page = page;
    this._limit = limit;
    this._popularStatus = popularStatus;
    this._language = language;
    this._productName = productName;
    this._brandName = brandName;
    this._zoneId = zoneId;
    this._storeType = storeType;
  }

  int get page => _page;

  set page(int page) => _page = page;

  int get limit => _limit;

  set limit(int limit) => _limit = limit;

  String get popularStatus => _popularStatus;

  set popularStatus(String popularStatus) => _popularStatus = popularStatus;

  String get language => _language;

  set language(String language) => _language = language;

  String get productName => _productName;

  set productName(String productName) => _productName = productName;

  String get brandName => _brandName;

  set brandName(String brandName) => _brandName = brandName;

  String get zoneId => _zoneId;

  set zoneId(String zoneId) => _zoneId = zoneId;

  int get storeType => _storeType;

  set storeType(int storeType) => _storeType = storeType;

  SearchProductRequest.fromJson(Map<String, dynamic> json) {
    _page = json['page'];
    _limit = json['limit'];
    _popularStatus = json['popularStatus'];
    _language = json['language'];
    _productName = json['productName'];
    _brandName = json['brandName'];
    _zoneId = json['zoneId'];
    _storeType = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this._page;
    data['limit'] = this._limit;
    data['popularStatus'] = this._popularStatus;
    data['language'] = this._language;
    data['productName'] = this._productName;
    data['brandName'] = this._brandName;
    data['zoneId'] = this._zoneId;
    data['type'] = this._storeType;
    return data;
  }
}
