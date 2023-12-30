import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_1/Controller/addangka.dart';
import 'package:getx_1/Controller/change_theme.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Get.put(MyController());
    return Obx(() => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: theme.isDark.value ? ThemeData.dark() : ThemeData.light(),
        ));
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Get.find<MyController>();
    final inc = Get.put(Tambah());
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(
                onPressed: () => t.changeTheme(),
                child: const Text('Ganti Tema')),
            ElevatedButton(
                onPressed: Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Page2())),
                child: Text('Next Page'))
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Obx(() => Text(
              'Angka ${inc.angka}',
              style: const TextStyle(fontSize: 30),
            )),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () => inc.increment()),
    );
  }
}
