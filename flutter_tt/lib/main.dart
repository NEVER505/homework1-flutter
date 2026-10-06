import 'package:flutter/material.dart';
import 'new_page.dart'; // استدعاء الصفحة الثانية

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color backgroundRedColor = Colors.red;
  Color backgroundWhiteColor = Colors.white;
  bool isRed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isRed ? backgroundRedColor : backgroundWhiteColor,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'This is the title',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isRed = !isRed;
                });
              },
              child: const Text('click me if you dare'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NewPage(isRed: isRed),
                  ),
                );
              },
              child: const Text('go to the next page'),
            ),
          ],
        ),
      ),
    );
  }
}