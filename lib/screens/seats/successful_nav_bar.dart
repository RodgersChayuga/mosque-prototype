import 'package:churchapp/mpesa/mpesa_page.dart';
import 'package:churchapp/screens/booking_screen.dart';
import 'package:churchapp/screens/status_screen.dart';
import 'package:churchapp/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SuccessfulNavBar extends StatefulWidget {
  SuccessfulNavBar({Key key}) : super(key: key);

  final String title = "SuccessfulNavBar"; //add this line

  @override
  _SuccessfulNavBarState createState() => _SuccessfulNavBarState();
}

class _SuccessfulNavBarState extends State<SuccessfulNavBar> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _pages = <Widget>[
    //Add pages to appear on the App, via Navigation Bar

    BookASeat(),
    MpesaPage(),
    BookingStatus(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            title: Text('Reservation'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            title: Text('Give Online'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            title: Text('Status'),
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}
