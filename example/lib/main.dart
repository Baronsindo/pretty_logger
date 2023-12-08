import 'package:flutter/material.dart';
import 'package:pretty_logger/pretty_logger.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _log() {
    PLog.green("-" * 80);

    PLog.info('Hello buddy');
    PLog.success('Welcome');
    PLog.warning('I am a bad man. Be careful');
    PLog.error('Ops. We ran into some trouble');

    PLog.black('black');
    PLog.red('red');
    PLog.white('white');
    PLog.cyan('cyan');
    PLog.green('green');
    PLog.yellow('yellow');
    PLog.blue('Blue');

    PLog.custom("Hi I am custom colored text.", '#FF8243');

    PLog.green("-" * 80);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _log,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.black),
            fixedSize: MaterialStateProperty.resolveWith(
              (states) => Size(
                MediaQuery.of(context).size.width * 0.8,
                50,
              ),
            ),
          ),
          child: const Text(
            "Log",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
