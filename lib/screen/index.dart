import 'package:flutter/material.dart';
import 'package:scooter/screen/home.dart';

class Index extends StatefulWidget {
  const Index({Key key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    HomeScreen(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: NetworkImage(
              'https://via.placeholder.com/150',
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            'mohd.seif@egaz.go.tz',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w200),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Software Developer',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          const SizedBox(height: 16.0),
          const Text.rich(
            TextSpan(
              text: 'First Name :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: " Moh'd",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          const Text.rich(
            TextSpan(
              text: 'Middle Name :',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              children: <InlineSpan>[
                TextSpan(
                  text: " Mshimba",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          const Text.rich(
            TextSpan(
              text: 'Last Name :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: " Seif",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text.rich(
            TextSpan(
              text: 'Contact :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: " +255776666813",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text.rich(
            TextSpan(
              text: 'Gender :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: " Male",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text.rich(
            TextSpan(
              text: 'Email :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              children: <InlineSpan>[
                TextSpan(
                  text: " mohd.seif@egaz.go.tz",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
