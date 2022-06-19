import 'package:flutter/material.dart';
import 'package:awesome_scroll_bar/awesome_scroll_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awesome Scroll Bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Awesome Scroll Bar')),
      body: AwesomeScrollBar(
        controller: _controller,
        child: ListView.builder(
          controller: _controller,
          itemCount: 50,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text('Item $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
