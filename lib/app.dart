import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/ui/screens/home_screen.dart';
import 'package:task1/ui/screens/menu_screen.dart';

class HotelManagementApp extends StatelessWidget {
  const HotelManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages:[
        GetPage(name: '/', page: () => MenuScreen()),
        GetPage(name: '/home-screen', page: () => HomeScreen()),
      ]
    );
  }
}
