import 'package:admindropshippingapp/appStartingPages/mobileloginpage.dart';
import '../brain.dart';
import 'history.dart';
import 'main.dart';
import 'package:flutter/material.dart';

functionality obj =functionality();
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 0;
  String name = obj.userName();
  String number = obj.userNumber();
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: const Color(0xff69A03A),
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: colorScheme.onSurface,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        onTap: (value) {
          // Respond to item press.
          setState(() => _currentIndex = value);
          if (_currentIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdminPage()),
            );
          } else if (_currentIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HistoryPage()),
            );
          } else if (_currentIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfileScreen()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(Icons.history),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.account_box),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('images/profileicon.jpg'),
            backgroundColor: Colors.white,
            radius: 50.0,
          ),
          Text(
            "Kainat Batool",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            width: 400.0,
            height: 20.0,
            child: Divider(
              color: Colors.white,
              thickness: 4.0,
            ),
          ),
          Card(
            color: Colors.white,
            margin: EdgeInsets.symmetric(
                vertical: 10.0, horizontal: 20.0),
            child: ListTile(
              leading: Icon(
                Icons.phone,
                color: Colors.green,
                size: 30.0,
              ),
              title: Text(
                '+92 3081726082',
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
