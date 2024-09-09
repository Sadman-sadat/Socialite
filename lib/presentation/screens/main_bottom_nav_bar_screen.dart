import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialite/presentation/state_holders/main_bottom_nav_bar_controller.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {

  final List<Widget> _screens = [
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavBarController>(
      builder: (mainBottomNavBarController){
        return Scaffold(
          body: _screens[mainBottomNavBarController.selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.black,
                  ),
                  label: 'Add'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle_rounded,
                    color: Colors.black,
                  ),
                  label: 'user'),
            ],
            currentIndex: mainBottomNavBarController.selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            onTap: (index){
              mainBottomNavBarController.changeIndex(index);
            },
            showUnselectedLabels: false,
          ),
        );
      }
    );
  }
}
