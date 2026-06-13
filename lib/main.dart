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
      backgroundColor: Colors.grey.shade100,
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Container(
                  child: ClipOval(
                    child: Image.network(
                      'https://placehold.co/48x48.png',
                      width: 48,
                      height: 48,
                    ),
                  ),
                ),
                Container(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.notifications,
                        size: 32,
                        color: Color(0xFF0769CC),
                      ),
                      Positioned(
                        top: -8,
                        right: -8,
                        child: Container(
                          // width: 24,
                          // height: 24,
                          padding: EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 1,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: .circular(40),
                            color: Colors.red,
                          ),
                          child: Text(
                            '9+',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: .w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
