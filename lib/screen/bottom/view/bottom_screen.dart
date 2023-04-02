import 'package:flutter/material.dart';
import 'package:newsapp/screen/bottom/provider/bottom_provider.dart';
import 'package:newsapp/screen/first/view/first_screen.dart';
import 'package:newsapp/screen/home/view/home_screen.dart';
import 'package:newsapp/screen/profile/profile_screen.dart';
import 'package:provider/provider.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  List screen = [FirstScreen(),HomeScreen(),ProfilrScreen()];
  BottomProvider? bottomProviderf;
  BottomProvider? bottomProvidert;
  @override
  Widget build(BuildContext context) {
    bottomProvidert = Provider.of<BottomProvider>(context,listen: true);
    bottomProviderf = Provider.of<BottomProvider>(context,listen: false);
    int i = bottomProvidert!.i;
    return SafeArea(
      child: Scaffold(
         body: screen[i],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          currentIndex: bottomProvidert!.i,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.white54,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'home'),
          ],
          onTap: (value) {
            bottomProvidert!.changeindex(value);
          },
        ),
      ),
    );
  }
}
