class SearchResposne {
  Results _results;

  SearchResposne({Results results}) {
    this._results = results;
  }

  Results get results => _results;
  set results(Results results) => _results = results;

  SearchResposne.fromJson(Map<String, dynamic> json) {
    _results = json['results'] != null ? new Results.fromJson(json['results']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._results != null) {
      data['results'] = this._results.toJson();
    }
    return data;
  }
}

class Results {
  Albummatches _albummatches;

  Results({Albummatches albummatches}) {
    this._albummatches = albummatches;

  }

  Albummatches get albummatches => _albummatches;
  set albummatches(Albummatches albummatches) => _albummatches = albummatches;

  Results.fromJson(Map<String, dynamic> json) {
    _albummatches = json['albummatches'] != null ? new Albummatches.fromJson(json['albummatches']) : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._albummatches != null) {
      data['albummatches'] = this._albummatches.toJson();
    }

    return data;
  }
}

class Albummatches {
  List<Album> _album;

  Albummatches({List<Album> album}) {
    this._album = album;
  }

  List<Album> get album => _album;
  set album(List<Album> album) => _album = album;

  Albummatches.fromJson(Map<String, dynamic> json) {
    if (json['album'] != null) {
      _album = new List<Album>();
      json['album'].forEach((v) { _album.add(new Album.fromJson(v)); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._album != null) {
      data['album'] = this._album.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Album {
  String _name;
  String _artist;
  String _url;
  List<Image> _image;
  String _streamable;
  String _mbid;

  Album({String name, String artist, String url, List<Image> image, String streamable, String mbid}) {
    this._name = name;
    this._artist = artist;
    this._url = url;
    this._image = image;
    this._streamable = streamable;
    this._mbid = mbid;
  }

  String get name => _name;
  set name(String name) => _name = name;
  String get artist => _artist;
  set artist(String artist) => _artist = artist;
  String get url => _url;
  set url(String url) => _url = url;
  List<Image> get image => _image;
  set image(List<Image> image) => _image = image;
  String get streamable => _streamable;
  set streamable(String streamable) => _streamable = streamable;
  String get mbid => _mbid;
  set mbid(String mbid) => _mbid = mbid;

  Album.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _artist = json['artist'];
    _url = json['url'];
    if (json['image'] != null) {
      _image = new List<Image>();
      json['image'].forEach((v) { _image.add(new Image.fromJson(v)); });
    }
    _streamable = json['streamable'];
    _mbid = json['mbid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['artist'] = this._artist;
    data['url'] = this._url;
    if (this._image != null) {
      data['image'] = this._image.map((v) => v.toJson()).toList();
    }
    data['streamable'] = this._streamable;
    data['mbid'] = this._mbid;
    return data;
  }
}

class Image {
  String _text;
  String _size;

  Image({String text, String size}) {
    this._text = text;
    this._size = size;
  }

  String get text => _text;
  set text(String text) => _text = text;
  String get size => _size;
  set size(String size) => _size = size;

  Image.fromJson(Map<String, dynamic> json) {
    _text = json['#text'];
    _size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this._text;
    data['size'] = this._size;
    return data;
  }
}
