import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third';

  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map<String,String>;
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: ${args['ItemId']}'),
            Text('Detail: ${args['massage']}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'สำเร็จ! ไปหน้ากระดาษเปล่า');
              },
              child: Text('ย้อนกลับ'),
            ),
          ],
        ),
      ),
    );
  }
}