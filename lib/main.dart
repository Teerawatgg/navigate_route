import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var routeName = HomeScreen.routeName;
    return MaterialApp( // กำหนดค่า routes
      debugShowCheckedModeBanner: false,
      initialRoute: routeName, // ชื่อ route เริ่มต้น
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailScreen.routeName: (context) => const DetailScreen(),
        // เพิ่ม screens อื่นๆ ที่นี่ภายหลัง
      },
    );
  }
}
