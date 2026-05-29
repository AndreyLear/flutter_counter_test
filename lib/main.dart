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
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  final String _designerName = 'Andrey Lear';
  double _fontSize = 12.0;

  bool _showName = false;

  void _toggleName() {
    _showName = _counter >= 5 ? true : false;
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _fontSize += _counter;
      _toggleName();
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      _fontSize -= _counter;
      _toggleName();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            _showName
                ? Text(_designerName, style: TextStyle(fontSize: _fontSize))
                : Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontSize: _fontSize,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),

      //persistentFooterButtons
      persistentFooterButtons: [
        ElevatedButton(
          onPressed: _incrementCounter,
          // child: const Text('Increment'),
          child: const Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: _decrementCounter,
          // child: const Text('Decrement'),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
