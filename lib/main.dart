import 'package:flutter/material.dart';
import 'flaticon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  final thinIcon = FlatIcon.t_bullseye;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_counter'),
            const SizedBox(height: 10),
            const Icon(FlatIcon.r_play),
            const SizedBox(height: 10),
            const Icon(FlatIcon.r_pause_circle),
            const SizedBox(height: 10),
            const Icon(FlatIcon.r_arrow_down),
            const SizedBox(height: 10),
            const Icon(FlatIcon.r_book, size: 50, color: Colors.orange),
            const SizedBox(height: 10),
            const Icon(FlatIcon.s_book, size: 50, color: Colors.blue),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(FlatIcon.r_plus),
      ),
    );
  }
}
