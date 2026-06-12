import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 20, 193, 55),
        ),
      ),
      home: const MyHomePage(title: 'Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Profile {
  final String name;
  final String specialization;
  final int experienceYears;
  final List<String> tools;
  final String about;

  Profile({
    required this.name,
    required this.specialization,
    required this.experienceYears,
    required this.tools,
    required this.about,
  });

  // String get _getGrade {
  //   switch (experienceYears) {
  //     case 0:
  //     case 1:
  //       return 'Junior';
  //     case 2:
  //     case 3:
  //       return 'Middle';
  //     case 4:
  //     case 5:
  //       return 'Senior';
  //     default:
  //       return 'Expert';
  //   }
  // }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: 200,
        decoration: BoxDecoration(color: Colors.grey.shade300),
        child: Column(
          mainAxisAlignment: .spaceBetween,
          // mainAxisAlignment: .center,
          // mainAxisAlignment: .spaceAround,
          // mainAxisAlignment: .end,
          // mainAxisAlignment: .start,
          crossAxisAlignment: .stretch,
          // crossAxisAlignment: .center,
          // crossAxisAlignment: .end,
          // crossAxisAlignment: .start,
          children: [
            SizedBox(height: 16),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(
              width: 80,
              height: 50,
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.blue),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
