import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

List screens = [
  Center(
    child: Text("Home",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
  ),
  Center(
    child: Text("Account",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
  ),
  Center(
    child: Text("Favourite",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
  ),
  Center(
    child: Text("Settings",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400)),
  ),
];

int index = 2;

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "bottom nav bar",
          style: TextStyle(color: Colors.black),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
        child: SizedBox(
          height: 75,
          child: BottomNavigationBar(
              backgroundColor: Colors.green[100],
              selectedItemColor: Colors.red,
              enableFeedback: true,
              elevation: 16,
              type: BottomNavigationBarType.fixed,
              // selectedIconTheme: IconThemeData(size: 26),
              currentIndex: index,
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Account'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: "favourite"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "settings"),
              ]),
        ),
      ),
      body: screens[index],
    );
  }
}
