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

  Profile({
    required this.name,
    required this.specialization,
    required this.experienceYears,
    required this.tools,
  });
}

class _MyHomePageState extends State<MyHomePage> {
  final Profile _andreyProfile = Profile(
    name: 'Andrey',
    specialization: 'UX/UI Designer',
    tools: ['Figma', 'Flutter', 'Photoshop'],
    experienceYears: 8,
  );

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
                    _andreyProfile.name,
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
                    _andreyProfile.specialization,
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
                    _andreyProfile.tools.join(','),
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
                    'Experience: ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: .w600,
                      letterSpacing: 0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    _getGrade(_andreyProfile.experienceYears),
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
