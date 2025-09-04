import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home'; // กำหนดชื่อ route
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('หน้าหลัก')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    // ส่ง arguments เป็น Map
                    'id': 'ARG-789',
                    'title': 'ข้อมูลจาก Named Route Args',
                  },
                );
              },
              child: const Text('ไปที่รายละเอียด'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: (

              ) {
                Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    // ส่ง arguments เป็น Map
                    'id': 'ARG-123',
                    'title': 'ข้อมูลจาก Named Route Args 123',
                  },
                );
              },
              child: const Text('กกดที่ ต่อไป'),
            ),
          ],
        ),
      ),
    );
  }
}
