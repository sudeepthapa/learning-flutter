import 'package:myfirstapp/models/address.dart';

class User {
  late int id;
  late String name;
  late String email;
  late String userName;
  late String phone;
  late String website;
  late Address? address;

  User(
      {required this.name,
      required this.email,
      required this.id,
      required this.userName,
      required this.phone,
      required this.website,
      required this.address});

  User.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    id = json['id'];
    userName = json['username'];
    phone = json['phone'];
    website = json['website'];
    address = Address.fromJson(json['address']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = name;
    data['email'] = email;
    data['address'] = address!.toMap();
    return data;
  }
}
