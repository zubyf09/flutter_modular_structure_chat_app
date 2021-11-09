class ActiveOrderResponse {
  String _message;
  int _httpStatus;
  Data _data;

  ActiveOrderResponse({String message, int httpStatus, Data data}) {
    this._message = message;
    this._httpStatus = httpStatus;
    this._data = data;
  }

  String get message => _message;
  set message(String message) => _message = message;
  int get httpStatus => _httpStatus;
  set httpStatus(int httpStatus) => _httpStatus = httpStatus;
  Data get data => _data;
  set data(Data data) => _data = data;

  ActiveOrderResponse.fromJson(Map<String, dynamic> json) {
    _message = json['message'];
    _httpStatus = json['httpStatus'];
    _data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this._message;
    data['httpStatus'] = this._httpStatus;
    if (this._data != null) {
      data['data'] = this._data.toJson();
    }
    return data;
  }
}

class Data {
  List<OrdersArray> _ordersArray;
  Profile _profile;

  Data({List<OrdersArray> ordersArray, Profile profile}) {
    this._ordersArray = ordersArray;
    this._profile = profile;
  }

  List<OrdersArray> get ordersArray => _ordersArray;
  set ordersArray(List<OrdersArray> ordersArray) => _ordersArray = ordersArray;
  Profile get profile => _profile;
  set profile(Profile profile) => _profile = profile;

  Data.fromJson(Map<String, dynamic> json) {
    if (json['ordersArray'] != null) {
      _ordersArray = new List<OrdersArray>();
      json['ordersArray'].forEach((v) {
        _ordersArray.add(new OrdersArray.fromJson(v));
      });
    }
    _profile =
    json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._ordersArray != null) {
      data['ordersArray'] = this._ordersArray.map((v) => v.toJson()).toList();
    }
    if (this._profile != null) {
      data['profile'] = this._profile.toJson();
    }
    return data;
  }
}

class OrdersArray {
  dynamic _orderId;
  dynamic _bookingDate;
  dynamic _pickAddress;
  dynamic _pickupLong;
  dynamic _pickupLat;
  dynamic _dropLat;
  dynamic _dropLong;
  dynamic _dropAddress;
  dynamic _statusMessage;
  int _statusCode;
  dynamic _storeName;
  dynamic _currencySymbol;
  dynamic _currency;
  dynamic _storeAddress;
  dynamic _totalAmount;
  dynamic _serviceType;
  List<Items> _items;
  dynamic _bookingType;
  dynamic _dueDatetime;
  dynamic _timeStamp;
  dynamic _driverId;
  dynamic _driverName;
  dynamic _subTotalAmountWithExcTax;
  dynamic _subTotalAmount;
  dynamic _deliveryCharge;
  dynamic _excTax;
  List<ExclusiveTaxes> _exclusiveTaxes;
  dynamic _driverMobile;
  dynamic _driverImage;
  dynamic _driverEmail;
  PaidBy _paidBy;
  dynamic _payByWallet;
  dynamic _cancellationFee;
  TimeStampObject _timeStampObject;
  dynamic _driverLatitude;
  dynamic _driverLongitude;

  OrdersArray(
      {var orderId,
        var bookingDate,
        var pickAddress,
        var pickupLong,
        var pickupLat,
        var dropLat,
        var dropLong,
        var dropAddress,
        var statusMessage,
        var statusCode,
        var storeName,
        var currencySymbol,
        var currency,
        var storeAddress,
        dynamic totalAmount,
        var serviceType,
        List<Items> items,
        var bookingType,
        var dueDatetime,
        var timeStamp,
        var driverId,
        var driverName,
        dynamic subTotalAmountWithExcTax,
        dynamic subTotalAmount,
        var deliveryCharge,
        var excTax,
        List<ExclusiveTaxes> exclusiveTaxes,
        var driverMobile,
        var driverImage,
        var driverEmail,
        PaidBy paidBy,
        var payByWallet,
        var cancellationFee,
        TimeStampObject timeStampObject,
        var driverLatitude,
        var driverLongitude}) {
    this._orderId = orderId;
    this._bookingDate = bookingDate;
    this._pickAddress = pickAddress;
    this._pickupLong = pickupLong;
    this._pickupLat = pickupLat;
    this._dropLat = dropLat;
    this._dropLong = dropLong;
    this._dropAddress = dropAddress;
    this._statusMessage = statusMessage;
    this._statusCode = statusCode;
    this._storeName = storeName;
    this._currencySymbol = currencySymbol;
    this._currency = currency;
    this._storeAddress = storeAddress;
    this._totalAmount = totalAmount;
    this._serviceType = serviceType;
    this._items = items;
    this._bookingType = bookingType;
    this._dueDatetime = dueDatetime;
    this._timeStamp = timeStamp;
    this._driverId = driverId;
    this._driverName = driverName;
    this._subTotalAmountWithExcTax = subTotalAmountWithExcTax;
    this._subTotalAmount = subTotalAmount;
    this._deliveryCharge = deliveryCharge;
    this._excTax = excTax;
    this._exclusiveTaxes = exclusiveTaxes;
    this._driverMobile = driverMobile;
    this._driverImage = driverImage;
    this._driverEmail = driverEmail;
    this._paidBy = paidBy;
    this._payByWallet = payByWallet;
    this._cancellationFee = cancellationFee;
    this._timeStampObject = timeStampObject;
    this._driverLatitude = driverLatitude;
    this._driverLongitude = driverLongitude;
  }

  dynamic get orderId => _orderId;
  set orderId(dynamic orderId) => _orderId = orderId;
  dynamic get bookingDate => _bookingDate;
  set bookingDate(dynamic bookingDate) => _bookingDate = bookingDate;
  dynamic get pickAddress => _pickAddress;
  set pickAddress(dynamic pickAddress) => _pickAddress = pickAddress;
  dynamic get pickupLong => _pickupLong;
  set pickupLong(dynamic pickupLong) => _pickupLong = pickupLong;
  dynamic get pickupLat => _pickupLat;
  set pickupLat(dynamic pickupLat) => _pickupLat = pickupLat;
  dynamic get dropLat => _dropLat;
  set dropLat(dynamic dropLat) => _dropLat = dropLat;
  dynamic get dropLong => _dropLong;
  set dropLong(dynamic dropLong) => _dropLong = dropLong;
  dynamic get dropAddress => _dropAddress;
  set dropAddress(dynamic dropAddress) => _dropAddress = dropAddress;
  dynamic get statusMessage => _statusMessage;
  set statusMessage(dynamic statusMessage) => _statusMessage = statusMessage;
  dynamic get statusCode => _statusCode;
  set statusCode(dynamic statusCode) => _statusCode = statusCode;
  dynamic get storeName => _storeName;
  set storeName(dynamic storeName) => _storeName = storeName;
  dynamic get currencySymbol => _currencySymbol;
  set currencySymbol(dynamic currencySymbol) => _currencySymbol = currencySymbol;
  dynamic get currency => _currency;
  set currency(dynamic currency) => _currency = currency;
  dynamic get storeAddress => _storeAddress;
  set storeAddress(dynamic storeAddress) => _storeAddress = storeAddress;
  dynamic get totalAmount => _totalAmount;
  set totalAmount(dynamic totalAmount) => _totalAmount = totalAmount;
  dynamic get serviceType => _serviceType;
  set serviceType(dynamic serviceType) => _serviceType = serviceType;
  List<Items> get items => _items;
  set items(List<Items> items) => _items = items;
  dynamic get bookingType => _bookingType;
  set bookingType(dynamic bookingType) => _bookingType = bookingType;
  dynamic get dueDatetime => _dueDatetime;
  set dueDatetime(dynamic dueDatetime) => _dueDatetime = dueDatetime;
  dynamic get timeStamp => _timeStamp;
  set timeStamp(dynamic timeStamp) => _timeStamp = timeStamp;
  dynamic get driverId => _driverId;
  set driverId(dynamic driverId) => _driverId = driverId;
  dynamic get driverName => _driverName;
  set driverName(dynamic driverName) => _driverName = driverName;
  dynamic get subTotalAmountWithExcTax => _subTotalAmountWithExcTax;
  set subTotalAmountWithExcTax(dynamic subTotalAmountWithExcTax) =>
      _subTotalAmountWithExcTax = subTotalAmountWithExcTax;
  dynamic get subTotalAmount => _subTotalAmount;
  set subTotalAmount(dynamic subTotalAmount) => _subTotalAmount = subTotalAmount;
  dynamic get deliveryCharge => _deliveryCharge;
  set deliveryCharge(dynamic deliveryCharge) => _deliveryCharge = deliveryCharge;
  dynamic get excTax => _excTax;
  set excTax(dynamic excTax) => _excTax = excTax;
  List<ExclusiveTaxes> get exclusiveTaxes => _exclusiveTaxes;
  set exclusiveTaxes(List<ExclusiveTaxes> exclusiveTaxes) =>
      _exclusiveTaxes = exclusiveTaxes;
  dynamic get driverMobile => _driverMobile;
  set driverMobile(dynamic driverMobile) => _driverMobile = driverMobile;
  dynamic get driverImage => _driverImage;
  set driverImage(dynamic driverImage) => _driverImage = driverImage;
  dynamic get driverEmail => _driverEmail;
  set driverEmail(dynamic driverEmail) => _driverEmail = driverEmail;
  PaidBy get paidBy => _paidBy;
  set paidBy(PaidBy paidBy) => _paidBy = paidBy;
  dynamic get payByWallet => _payByWallet;
  set payByWallet(dynamic payByWallet) => _payByWallet = payByWallet;
  dynamic get cancellationFee => _cancellationFee;
  set cancellationFee(dynamic cancellationFee) =>
      _cancellationFee = cancellationFee;
  TimeStampObject get timeStampObject => _timeStampObject;
  set timeStampObject(TimeStampObject timeStampObject) =>
      _timeStampObject = timeStampObject;
  dynamic get driverLatitude => _driverLatitude;
  set driverLatitude(dynamic driverLatitude) => _driverLatitude = driverLatitude;
  dynamic get driverLongitude => _driverLongitude;
  set driverLongitude(dynamic driverLongitude) =>
      _driverLongitude = driverLongitude;

  OrdersArray.fromJson(Map<String, dynamic> json) {
    _orderId = json['orderId'];
    _bookingDate = json['bookingDate'];
    _pickAddress = json['pickAddress'];
    _pickupLong = json['pickupLong'];
    _pickupLat = json['pickupLat'];
    _dropLat = json['dropLat'];
    _dropLong = json['dropLong'];
    _dropAddress = json['dropAddress'];
    _statusMessage = json['statusMessage'];
    _statusCode = json['statusCode'];
    _storeName = json['storeName'];
    _currencySymbol = json['currencySymbol'];
    _currency = json['currency'];
    _storeAddress = json['storeAddress'];
    _totalAmount = json['totalAmount'];
    _serviceType = json['serviceType'];
    if (json['items'] != null) {
      _items = new List<Items>();
      json['items'].forEach((v) {
        _items.add(new Items.fromJson(v));
      });
    }
    _bookingType = json['bookingType'];
    _dueDatetime = json['dueDatetime'];
    _timeStamp = json['timeStamp'];
    _driverId = json['driverId'];
    _driverName = json['driverName'];
    _subTotalAmountWithExcTax = json['subTotalAmountWithExcTax'];
    _subTotalAmount = json['subTotalAmount'];
    _deliveryCharge = json['deliveryCharge'];
    _excTax = json['excTax'];
    if (json['exclusiveTaxes'] != null) {
      _exclusiveTaxes = new List<ExclusiveTaxes>();
      json['exclusiveTaxes'].forEach((v) {
        _exclusiveTaxes.add(new ExclusiveTaxes.fromJson(v));
      });
    }
    _driverMobile = json['driverMobile'];
    _driverImage = json['driverImage'];
    _driverEmail = json['driverEmail'];
    _paidBy =
    json['paidBy'] != null ? new PaidBy.fromJson(json['paidBy']) : null;
    _payByWallet = json['payByWallet'];
    _cancellationFee = json['cancellationFee'];
    _timeStampObject = json['timeStampObject'] != null
        ? new TimeStampObject.fromJson(json['timeStampObject'])
        : null;
    _driverLatitude = json['driverLatitude'];
    _driverLongitude = json['driverLongitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['orderId'] = this._orderId;
    data['bookingDate'] = this._bookingDate;
    data['pickAddress'] = this._pickAddress;
    data['pickupLong'] = this._pickupLong;
    data['pickupLat'] = this._pickupLat;
    data['dropLat'] = this._dropLat;
    data['dropLong'] = this._dropLong;
    data['dropAddress'] = this._dropAddress;
    data['statusMessage'] = this._statusMessage;
    data['statusCode'] = this._statusCode;
    data['storeName'] = this._storeName;
    data['currencySymbol'] = this._currencySymbol;
    data['currency'] = this._currency;
    data['storeAddress'] = this._storeAddress;
    data['totalAmount'] = this._totalAmount;
    data['serviceType'] = this._serviceType;
    if (this._items != null) {
      data['items'] = this._items.map((v) => v.toJson()).toList();
    }
    data['bookingType'] = this._bookingType;
    data['dueDatetime'] = this._dueDatetime;
    data['timeStamp'] = this._timeStamp;
    data['driverId'] = this._driverId;
    data['driverName'] = this._driverName;
    data['subTotalAmountWithExcTax'] = this._subTotalAmountWithExcTax;
    data['subTotalAmount'] = this._subTotalAmount;
    data['deliveryCharge'] = this._deliveryCharge;
    data['excTax'] = this._excTax;
    if (this._exclusiveTaxes != null) {
      data['exclusiveTaxes'] =
          this._exclusiveTaxes.map((v) => v.toJson()).toList();
    }
    data['driverMobile'] = this._driverMobile;
    data['driverImage'] = this._driverImage;
    data['driverEmail'] = this._driverEmail;
    if (this._paidBy != null) {
      data['paidBy'] = this._paidBy.toJson();
    }
    data['payByWallet'] = this._payByWallet;
    data['cancellationFee'] = this._cancellationFee;
    if (this._timeStampObject != null) {
      data['timeStampObject'] = this._timeStampObject.toJson();
    }
    data['driverLatitude'] = this._driverLatitude;
    data['driverLongitude'] = this._driverLongitude;
    return data;
  }
}

class Items {
  dynamic _itemName;
  dynamic _quantity;
  dynamic _unitId;
  dynamic _unitName;
  dynamic _unitPrice;
  dynamic _finalPrice;
  dynamic _appliedDiscount;
  dynamic _itemImageURL;
  dynamic _addedToCartOn;
  dynamic _parentProductId;
  dynamic _offerId;
  dynamic _offerName;
  dynamic _childProductId;
  List<Taxes> _taxes;
  List<AddOns> _addOns;
  dynamic _catName;
  dynamic _addOnsAdded;
  dynamic _addOnAvailable;
  dynamic _subCatName;
  dynamic _subSubCatName;
  dynamic _status;
  dynamic _packId;
  dynamic _addOnsPrice;

  Items(
      {dynamic itemName,
        dynamic quantity,
        dynamic unitId,
        dynamic unitName,
        dynamic unitPrice,
        dynamic finalPrice,
        dynamic appliedDiscount,
        dynamic itemImageURL,
        dynamic addedToCartOn,
        dynamic parentProductId,
        dynamic offerId,
        dynamic offerName,
        dynamic childProductId,
        List<Taxes> taxes,
        List<AddOns> addOns,
        dynamic catName,
        dynamic addOnsAdded,
        dynamic addOnAvailable,
        dynamic subCatName,
        dynamic subSubCatName,
        dynamic status,
        dynamic packId,
        dynamic addOnsPrice}) {
    this._itemName = itemName;
    this._quantity = quantity;
    this._unitId = unitId;
    this._unitName = unitName;
    this._unitPrice = unitPrice;
    this._finalPrice = finalPrice;
    this._appliedDiscount = appliedDiscount;
    this._itemImageURL = itemImageURL;
    this._addedToCartOn = addedToCartOn;
    this._parentProductId = parentProductId;
    this._offerId = offerId;
    this._offerName = offerName;
    this._childProductId = childProductId;
    this._taxes = taxes;
    this._addOns = addOns;
    this._catName = catName;
    this._addOnsAdded = addOnsAdded;
    this._addOnAvailable = addOnAvailable;
    this._subCatName = subCatName;
    this._subSubCatName = subSubCatName;
    this._status = status;
    this._packId = packId;
    this._addOnsPrice = addOnsPrice;
  }

  dynamic get itemName => _itemName;
  set itemName(dynamic itemName) => _itemName = itemName;
  dynamic get quantity => _quantity;
  set quantity(dynamic quantity) => _quantity = quantity;
  dynamic get unitId => _unitId;
  set unitId(dynamic unitId) => _unitId = unitId;
  dynamic get unitName => _unitName;
  set unitName(dynamic unitName) => _unitName = unitName;
  dynamic get unitPrice => _unitPrice;
  set unitPrice(dynamic unitPrice) => _unitPrice = unitPrice;
  dynamic get finalPrice => _finalPrice;
  set finalPrice(dynamic finalPrice) => _finalPrice = finalPrice;
  dynamic get appliedDiscount => _appliedDiscount;
  set appliedDiscount(dynamic appliedDiscount) =>
      _appliedDiscount = appliedDiscount;
  dynamic get itemImageURL => _itemImageURL;
  set itemImageURL(dynamic itemImageURL) => _itemImageURL = itemImageURL;
  dynamic get addedToCartOn => _addedToCartOn;
  set addedToCartOn(dynamic addedToCartOn) => _addedToCartOn = addedToCartOn;
  dynamic get parentProductId => _parentProductId;
  set parentProductId(dynamic parentProductId) =>
      _parentProductId = parentProductId;
  dynamic get offerId => _offerId;
  set offerId(dynamic offerId) => _offerId = offerId;
  dynamic get offerName => _offerName;
  set offerName(dynamic offerName) => _offerName = offerName;
  dynamic get childProductId => _childProductId;
  set childProductId(dynamic childProductId) => _childProductId = childProductId;
  List<Taxes> get taxes => _taxes;
  set taxes(List<Taxes> taxes) => _taxes = taxes;
  List<AddOns> get addOns => _addOns;
  set addOns(List<AddOns> addOns) => _addOns = addOns;
  dynamic get catName => _catName;
  set catName(dynamic catName) => _catName = catName;
  dynamic get addOnsAdded => _addOnsAdded;
  set addOnsAdded(dynamic addOnsAdded) => _addOnsAdded = addOnsAdded;
  dynamic get addOnAvailable => _addOnAvailable;
  set addOnAvailable(dynamic addOnAvailable) => _addOnAvailable = addOnAvailable;
  dynamic get subCatName => _subCatName;
  set subCatName(String subCatName) => _subCatName = subCatName;
  dynamic get subSubCatName => _subSubCatName;
  set subSubCatName(dynamic subSubCatName) => _subSubCatName = subSubCatName;
  dynamic get status => _status;
  set status(dynamic status) => _status = status;
  dynamic get packId => _packId;
  set packId(dynamic packId) => _packId = packId;
  dynamic get addOnsPrice => _addOnsPrice;
  set addOnsPrice(dynamic addOnsPrice) => _addOnsPrice = addOnsPrice;

  Items.fromJson(Map<String, dynamic> json) {
    _itemName = json['itemName'];
    _quantity = json['quantity'];
    _unitId = json['unitId'];
    _unitName = json['unitName'];
    _unitPrice = json['unitPrice'];
    _finalPrice = json['finalPrice'];
    _appliedDiscount = json['appliedDiscount'];
    _itemImageURL = json['itemImageURL'];
    _addedToCartOn = json['addedToCartOn'];
    _parentProductId = json['parentProductId'];
    _offerId = json['offerId'];
    _offerName = json['offerName'];
    _childProductId = json['childProductId'];
    if (json['taxes'] != null) {
      _taxes = new List<Taxes>();
      json['taxes'].forEach((v) {
        _taxes.add(new Taxes.fromJson(v));
      });
    }
    if (json['addOns'] != null) {
      _addOns = new List<AddOns>();
      json['addOns'].forEach((v) {
        _addOns.add(new AddOns.fromJson(v));
      });
    }
    _catName = json['catName'];
    _addOnsAdded = json['addOnsAdded'];
    _addOnAvailable = json['addOnAvailable'];
    _subCatName = json['subCatName'];
    _subSubCatName = json['subSubCatName'];
    _status = json['status'];
    _packId = json['packId'];
    _addOnsPrice = json['addOnsPrice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['itemName'] = this._itemName;
    data['quantity'] = this._quantity;
    data['unitId'] = this._unitId;
    data['unitName'] = this._unitName;
    data['unitPrice'] = this._unitPrice;
    data['finalPrice'] = this._finalPrice;
    data['appliedDiscount'] = this._appliedDiscount;
    data['itemImageURL'] = this._itemImageURL;
    data['addedToCartOn'] = this._addedToCartOn;
    data['parentProductId'] = this._parentProductId;
    data['offerId'] = this._offerId;
    data['offerName'] = this._offerName;
    data['childProductId'] = this._childProductId;
    if (this._taxes != null) {
      data['taxes'] = this._taxes.map((v) => v.toJson()).toList();
    }
    if (this._addOns != null) {
      data['addOns'] = this._addOns.map((v) => v.toJson()).toList();
    }
    data['catName'] = this._catName;
    data['addOnsAdded'] = this._addOnsAdded;
    data['addOnAvailable'] = this._addOnAvailable;
    data['subCatName'] = this._subCatName;
    data['subSubCatName'] = this._subSubCatName;
    data['status'] = this._status;
    data['packId'] = this._packId;
    data['addOnsPrice'] = this._addOnsPrice;
    return data;
  }
}

class Taxes {
  dynamic _tax;

  Taxes({String tax}) {
    this._tax = tax;
  }

  dynamic get tax => _tax;
  set tax(dynamic tax) => _tax = tax;

  Taxes.fromJson(Map<String, dynamic> json) {
    _tax = json['tax'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tax'] = this._tax;
    return data;
  }
}

class AddOns {
  dynamic _addOns;

  AddOns({dynamic addOns}) {
    this._addOns = addOns;
  }

  dynamic get addOns => _addOns;
  set addOns(dynamic addOns) => _addOns = addOns;

  AddOns.fromJson(Map<String, dynamic> json) {
    _addOns = json['addOns'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['addOns'] = this._addOns;
    return data;
  }
}

class ExclusiveTaxes {
  dynamic _exclusiveTaxes;

  ExclusiveTaxes({dynamic exclusiveTaxes}) {
    this._exclusiveTaxes = exclusiveTaxes;
  }

  dynamic get exclusiveTaxes => _exclusiveTaxes;
  set exclusiveTaxes(dynamic exclusiveTaxes) => _exclusiveTaxes = exclusiveTaxes;

  ExclusiveTaxes.fromJson(Map<String, dynamic> json) {
    _exclusiveTaxes = json['exclusiveTaxes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['exclusiveTaxes'] = this._exclusiveTaxes;
    return data;
  }
}

class PaidBy {
  dynamic _cash;
  dynamic _wallet;
  dynamic _card;
  dynamic _cardChargeId;

  PaidBy({dynamic cash, dynamic wallet, dynamic card, dynamic cardChargeId}) {
    this._cash = cash;
    this._wallet = wallet;
    this._card = card;
    this._cardChargeId = cardChargeId;
  }

  dynamic get cash => _cash;
  set cash(int cash) => _cash = cash;
  dynamic get wallet => _wallet;
  set wallet(int wallet) => _wallet = wallet;
  dynamic get card => _card;
  set card(double card) => _card = card;
  dynamic get cardChargeId => _cardChargeId;
  set cardChargeId(String cardChargeId) => _cardChargeId = cardChargeId;

  PaidBy.fromJson(Map<String, dynamic> json) {
    _cash = json['cash'];
    _wallet = json['wallet'];
    _card = json['card'];
    _cardChargeId = json['cardChargeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cash'] = this._cash;
    data['wallet'] = this._wallet;
    data['card'] = this._card;
    data['cardChargeId'] = this._cardChargeId;
    return data;
  }
}

class TimeStampObject {
  Created _created;

  TimeStampObject({Created created}) {
    this._created = created;
  }

  Created get created => _created;
  set created(Created created) => _created = created;

  TimeStampObject.fromJson(Map<String, dynamic> json) {
    _created =
    json['created'] != null ? new Created.fromJson(json['created']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._created != null) {
      data['created'] = this._created.toJson();
    }
    return data;
  }
}

class Created {
  dynamic _statusUpdatedBy;
  dynamic _userId;
  dynamic _timeStamp;
  dynamic _isoDate;
  Location _location;
  dynamic _message;
  dynamic _ip;

  Created(
      {dynamic statusUpdatedBy,
        dynamic userId,
        dynamic timeStamp,
        dynamic isoDate,
        Location location,
        dynamic message,
        dynamic ip}) {
    this._statusUpdatedBy = statusUpdatedBy;
    this._userId = userId;
    this._timeStamp = timeStamp;
    this._isoDate = isoDate;
    this._location = location;
    this._message = message;
    this._ip = ip;
  }

  dynamic get statusUpdatedBy => _statusUpdatedBy;
  set statusUpdatedBy(dynamic statusUpdatedBy) =>
      _statusUpdatedBy = statusUpdatedBy;
  dynamic get userId => _userId;
  set userId(dynamic userId) => _userId = userId;
  dynamic get timeStamp => _timeStamp;
  set timeStamp(dynamic timeStamp) => _timeStamp = timeStamp;
  dynamic get isoDate => _isoDate;
  set isoDate(dynamic isoDate) => _isoDate = isoDate;
  Location get location => _location;
  set location(Location location) => _location = location;
  dynamic get message => _message;
  set message(String dynamic) => _message = message;
  dynamic get ip => _ip;
  set ip(dynamic ip) => _ip = ip;

  Created.fromJson(Map<String, dynamic> json) {
    _statusUpdatedBy = json['statusUpdatedBy'];
    _userId = json['userId'];
    _timeStamp = json['timeStamp'];
    _isoDate = json['isoDate'];
    _location = json['location'] != null
        ? new Location.fromJson(json['location'])
        : null;
    _message = json['message'];
    _ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusUpdatedBy'] = this._statusUpdatedBy;
    data['userId'] = this._userId;
    data['timeStamp'] = this._timeStamp;
    data['isoDate'] = this._isoDate;
    if (this._location != null) {
      data['location'] = this._location.toJson();
    }
    data['message'] = this._message;
    data['ip'] = this._ip;
    return data;
  }
}

class Location {
  double _longitude;
  double _latitude;

  Location({double longitude, double latitude}) {
    this._longitude = longitude;
    this._latitude = latitude;
  }

  double get longitude => _longitude;
  set longitude(double longitude) => _longitude = longitude;
  double get latitude => _latitude;
  set latitude(double latitude) => _latitude = latitude;

  Location.fromJson(Map<String, dynamic> json) {
    _longitude = json['longitude'];
    _latitude = json['latitude'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['longitude'] = this._longitude;
    data['latitude'] = this._latitude;
    return data;
  }
}

class Profile {
  MmjCard _mmjCard;
  MmjCard _identityCard;

  Profile({MmjCard mmjCard, MmjCard identityCard}) {
    this._mmjCard = mmjCard;
    this._identityCard = identityCard;
  }

  MmjCard get mmjCard => _mmjCard;
  set mmjCard(MmjCard mmjCard) => _mmjCard = mmjCard;
  MmjCard get identityCard => _identityCard;
  set identityCard(MmjCard identityCard) => _identityCard = identityCard;

  Profile.fromJson(Map<String, dynamic> json) {
    _mmjCard =
    json['mmjCard'] != null ? new MmjCard.fromJson(json['mmjCard']) : null;
    _identityCard = json['identityCard'] != null
        ? new MmjCard.fromJson(json['identityCard'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._mmjCard != null) {
      data['mmjCard'] = this._mmjCard.toJson();
    }
    if (this._identityCard != null) {
      data['identityCard'] = this._identityCard.toJson();
    }
    return data;
  }
}

class MmjCard {
  dynamic _url;
  dynamic _verified;

  MmjCard({dynamic url, dynamic verified}) {
    this._url = url;
    this._verified = verified;
  }

  dynamic get url => _url;
  set url(dynamic url) => _url = url;
  dynamic get verified => _verified;
  set verified(dynamic verified) => _verified = verified;

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