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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          margin: EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 129, 248, 230),
            border: Border.all(
              color: const Color.fromARGB(255, 39, 230, 201),
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(122, 22, 192, 167),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                'Card Title',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
              SizedBox(height: 12),
              Text(
                'This is the description of your card',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
