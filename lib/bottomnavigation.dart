import 'package:flutter/material.dart';
import 'package:local_film_festival/category.dart';
import 'package:local_film_festival/colors.dart';
import 'package:local_film_festival/events.dart';
import 'package:local_film_festival/homepage.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final pages = [
    homepage(),
    categorypage(),
    eventpage(),
    const Text('Profile')
  ];
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: appcolor,
        unselectedItemColor: Colors.grey,

        type: BottomNavigationBarType.fixed,
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedLabelStyle:
            TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        unselectedLabelStyle: TextStyle(
            color: Colors.white,
            fontWeight:
                FontWeight.bold), // Set the color for the selected label text
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
            activeIcon: Icon(Icons.home_outlined, color: appcolor),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.category,
              color: Colors.grey,
            ),
            label: "Category",
            activeIcon: Icon(Icons.category_outlined, color: appcolor),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.event,
              color: Colors.grey,
            ),
            label: "Events",
            activeIcon: Icon(Icons.event_outlined, color: appcolor),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            label: "Profile",
            activeIcon: Icon(Icons.person_outline, color: appcolor),
          ),
        ],
      ),
    );
  }
}
