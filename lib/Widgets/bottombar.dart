import 'package:flutter/material.dart';
import 'package:iguard/Screens/home.dart';
import 'package:iguard/Screens/profile.dart';
import 'package:iguard/Screens/userProfile.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

int _currentIndex = 0;
final screens = [
  home(),
  UserProfile(),
];

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 12),
        child: SizedBox(
            height: 82,
            width: 82,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.blue, blurRadius: 10, spreadRadius: 1)
                ], shape: BoxShape.circle),
                child: FloatingActionButton(
                  elevation: 0.0,
                  onPressed: () {},
                  backgroundColor: Color(0XFF1A367F),
                  child: Icon(Icons.add),
                ),
              ),
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0XFF1A367F),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Profile",
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
