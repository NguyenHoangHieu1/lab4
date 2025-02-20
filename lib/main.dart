import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const FortuneTellerApp());
}

class FortuneTellerApp extends StatelessWidget {
  const FortuneTellerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int ballNum = 1;

  void rollBall() {
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        title: Text('Mystical Fortune Teller'),
      ),
      body: Center(
        child: TextButton(
          onPressed: rollBall,
          child: Image.asset('assets/images/ball$ballNum.png'),
        ),
      ),
    );
  }
}
