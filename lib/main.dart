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

  String get _getGrade {
    switch (experienceYears) {
      case 0:
      case 1:
        return 'Junior';
      case 2:
      case 3:
        return 'Middle';
      case 4:
      case 5:
        return 'Senior';
      default:
        return 'Expert';
    }
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final Profile userProfile = Profile(
    name: 'Andrey Lear',
    specialization: 'UX / UI Designer',
    experienceYears: 7,
    tools: ['Flutter', 'Dart', 'Figma', 'HTML / CSS'],
    about:
        'I am a professional UI / UX Designer with 7 years of experience in creating user-centered digital products. I specialize in mobile and web application design, and I am passionate about creating intuitive and visually appealing interfaces.',
  );

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
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 207, 242, 242),
        ),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: Column(
                crossAxisAlignment: .stretch,
                mainAxisAlignment: .center,
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: .circular(100),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1728887823143-d92d2ebbb53a?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          width: 128,
                          height: 128,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 16),
                      Column(
                        children: [
                          Text(
                            userProfile.name,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: .w700,
                              height: 1.4,
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: 2),
                          Row(
                            mainAxisAlignment: .center,
                            children: [
                              Text(
                                userProfile.specialization,
                                style: TextStyle(
                                  fontSize: 18,
                                  height: 1.4,
                                  letterSpacing: 0,
                                ),
                              ),
                              SizedBox(width: 4),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 2,
                                  horizontal: 8,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.green[100],
                                  borderRadius: .circular(16),
                                ),
                                child: Text(
                                  userProfile._getGrade,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: .w600,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: .start,
                    children: [
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'Experience',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: .w400,
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            '${userProfile.experienceYears} years',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: .w500,
                              letterSpacing: -0.3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'Tools',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: .w400,
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            userProfile.tools.join(", "),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: .w500,
                              letterSpacing: -0.15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: .start,
                        children: [
                          Text(
                            'About Me',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 16,
                              fontWeight: .w400,
                              letterSpacing: -0.3,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            userProfile.about,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: .w500,
                              letterSpacing: -0.15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      Container(
                        width: double.infinity,
                        alignment: .center,
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 24,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(56),
                        ),
                        child: Text(
                          "Contact me",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 18,
                            fontWeight: .w600,
                            letterSpacing: -0.3,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
