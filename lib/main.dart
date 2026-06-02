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

class _MyHomePageState extends State<MyHomePage> {
  final Map<String, dynamic> _profileData = {
    'name': 'Andrey',
    'specialization': 'UX/UI Designer',
    'tools': ['Figma', 'Flutter', 'Photoshop'],
    'experienceYears': 8,
  };

  String _getGrade(int experience) {
    if (experience < 1) {
      return 'Noob';
    } else if (experience < 3) {
      return 'Junior';
    } else if (experience < 6) {
      return 'Middle';
    } else if (experience < 10) {
      return 'Senior';
    } else {
      return 'Legend';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Name:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w600,
                      letterSpacing: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    _profileData['name'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w800,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'Specialization:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w600,
                      letterSpacing: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    _profileData['specialization'],
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w800,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    'Tools:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w600,
                      letterSpacing: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    _profileData['tools'].join(', '),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w800,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Row(
                    children: [
                      Text(
                        'Experience: ',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: .w600,
                          letterSpacing: 0,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    _getGrade(_profileData['experienceYears']),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w800,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
