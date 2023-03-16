import 'package:flutter/material.dart';
import 'package:scooter/model/user.dart';
import 'package:scooter/services/user_api.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> users = [];

  @override
  void initState() {
    super.initState();
    fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('List Of User'),
      // ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) {
          final user = users[index];
          return ListTile(
            // leading: CircleAvatar(
            //   child: Text('${index + 1}'),
            // ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(user.picture.large),
            ),
            title: Text(user.fullName),
            subtitle: Text(user.email),
          );
        }),
      ),
    );
  }

  Future<void> fetchUsers() async {
    final response = await UserApi.fetchUsers();
    setState(() {
      users = response;
    });
  }
}
