import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:socialite/controller_binder.dart';
import 'package:socialite/presentation/screens/main_bottom_nav_bar_screen.dart';

class Socialite extends StatelessWidget {
  const Socialite({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Socialite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      home: const MainBottomNavBarScreen(),
      initialBinding: ControllerBinder(),
    );
  }
}
