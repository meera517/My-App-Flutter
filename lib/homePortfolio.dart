import 'package:flutter/material.dart';
import 'screens/homeTab.dart';
import 'screens/interest.dart';
import 'screens/experience.dart';
import 'screens/hobbies.dart';
import 'screens/contact.dart';

class HomePortFolio extends StatefulWidget {
  @override
  _HomePortFolioState createState() => _HomePortFolioState();
}

class _HomePortFolioState extends State<HomePortFolio> {
  int _currentIndex = 0;
  List<Widget> screenList = [
    HomeTab(),
    interest(),
    experience(),
    hobbies(),
    contact(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                CircleAvatar(
                    backgroundImage: AssetImage("images/child.jpeg"),
                    radius: 22),
                SizedBox(
                  width: 10.0,
                ),
                Text("Muthulakshmi S",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: screenList.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedLabelStyle: TextStyle(
          color: Colors.black87,
        ),
        selectedLabelStyle: TextStyle(
          color: Colors.blue,
        ),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black87,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: "About me",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.computer),
            label: "Interests",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: "Experience"),
          BottomNavigationBarItem(
            icon: Icon(Icons.import_contacts_outlined),
            label: "Hobbies",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quick_contacts_dialer_rounded),
            label: "Contact",
          ),
        ],
      ),
    );
  }
}
