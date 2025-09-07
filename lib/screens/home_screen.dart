import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/screens/third_screen.dart';
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
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {
                    'ItemId': 'Item-789',
                    'massage': 'ข้อมูลจาก Named Route Args',
                  },
                );
                print('returned result: $result');
              },
              child: const Text('ไปที่รายละเอียด'),
            ),
            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  ThirdScreen.routeName,
                  arguments: {
                    'ItemId': 'Item-123',
                    'massage': 'ข้อมูลจาก กระดาษเปล่า',
                  },
                );
                print('returned result: $result');
              },
              child: const Text('ไปที่หน้ากระดาษเปล่า'),
            ),
          ],
        ),
      ),
    );
  }
}
