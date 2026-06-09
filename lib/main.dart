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
        width: double.infinity,
        height: 120,
        decoration: BoxDecoration(color: Colors.grey.shade300),
        child: Row(
          mainAxisAlignment: .spaceAround,
          // mainAxisAlignment: .spaceEvenly,
          // mainAxisAlignment: .spaceBetween,
          // crossAxisAlignment: .end,
          // crossAxisAlignment: .stretch,
          crossAxisAlignment: .center,
          // crossAxisAlignment: .baseline,
          // textBaseline: .alphabetic,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.green),
            ),
            Container(
              width: 50,
              height: 80,
              decoration: BoxDecoration(color: Colors.red),
            ),
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
