import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mytest/input_page.dart';

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
  CameraPosition initialCameraPosition = const CameraPosition(target: LatLng(40.7384685, -73.9890675), zoom: 0.0);
  void _moveToInputPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const InputPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
          child: GoogleMap(
        initialCameraPosition: CameraPosition(target: LatLng(40.7384685, -73.9890675), zoom: 0.0)
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _moveToInputPage,
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
