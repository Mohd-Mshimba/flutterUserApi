import 'package:scooter/model/user_dob.dart';
import 'package:scooter/model/user_location.dart';
import 'package:scooter/model/user_name.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  User({
    this.gender,
    this.email,
    this.phone,
    this.cell,
    this.nat,
    this.name,
    this.dob,
    this.location,
  });

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}
