import 'dart:convert';
import 'package:scooter/model/user_dob.dart';
// import 'package:scooter/model/user_location.dart';

import '../model/user.dart';
import 'package:scooter/model/user_name.dart';
import 'package:http/http.dart' as http;

class UserApi {
  static Future<List<User>> fetchUsers() async {
    const url = 'http://randomuser.me/api/?results=100';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List;
    final users = results.map((e) {
      final name = UserName(
        title: e['name']['title'],
        first: e['name']['first'],
        last: e['name']['last'],
      );

      final date = e['dob']['date'];
      final dob = UserDob(
        age: e['dob']['age'],
        date: DateTime.parse(date),
      );

      // final street = LocationStreet(
      //   name: e['location']['street']['name'],
      //   number: e['location']['street']['number'],
      // );

      // final coordinates = LocationCoordinates(
      //   latitude: e['location']['coordinates']['latitude'],
      //   longitude: e['location']['coordinates']['longitude'],
      // );

      // final timezone = LocationTimezone(
      //   offset: e['location']['timezone']['offset'],
      //   description: e['location']['timezone']['description'],
      // );

      // final location = UserLocation(
      //   city: e['location']['city'],
      //   state: e['location']['state'],
      //   country: e['location']['country'],
      //   postcode: e['location']['postcode'].toString(),
      //   street: street,
      //   coordinates: coordinates,
      //   timezone: timezone,
      // );

      return User(
        cell: e['cell'],
        email: e['email'],
        gender: e['gender'],
        nat: e['nat'],
        phone: e['phone'],
        name: name,
        dob: dob,
        // location: location,
      );
    }).toList();
    return users;
  }
}
