class Address {
  late String street;
  late String suite;
  late String city;
  late String zipcode;
  late Geo geo;

  Address({
    required this.city,
    required this.street,
    required this.suite,
    required this.zipcode,
    required this.geo,
  });

  Address.fromJson(Map<String, dynamic> map) {
    street = map['street'];
    suite = map['suite'];
    city = map['city'];
    zipcode = map['zipcode'];
    geo = Geo.fromJson(map['geo']);
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['street'] = street;
    data['suite'] = suite;
    data['city'] = city;
    data['zipcode'] = zipcode;
    data['geo'] = geo.toMap();
    return data;
  }
}

class Geo {
  late String lat;
  late String lng;

  Geo({required this.lat, required this.lng});

  Geo.fromJson(Map<String, dynamic> data) {
    lat = data['lat'];
    lng = data['lng'];
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}
