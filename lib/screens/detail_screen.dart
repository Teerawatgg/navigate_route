import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail'; // กำหนดชื่อ route
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ดึง arguments
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;

    // ใช้ arguments, กำหนดค่าเริ่มต้นหากเป็น null
    final String itemId = args?['id'] ?? 'ไม่มี ID';
    final String pageTitle = args?['title'] ?? 'รายละเอียด';

    return Scaffold(
      appBar: AppBar(title: Text('ไอเท็ม: $itemId')), // ใช้ ID ที่ดึงมา
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('ได้รับ: $pageTitle'), // ใช้ title ที่ดึงมา
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Pop กลับง่ายๆ
              },
              child: const Text('ย้อนกลับ'),
            ),
          ],
        ),
      ),
    );
  }
}
