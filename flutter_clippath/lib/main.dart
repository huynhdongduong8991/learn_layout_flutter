import 'package:flutter/material.dart';
import 'package:flutter_clippath/screens/common/bottom_background_clipper.dart';
import 'package:flutter_clippath/screens/common/top_background_clipper.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: ClipPath(
              clipper: TopBackgroundClipper(),
              child: Container(
                color: const Color.fromARGB(255, 11, 69, 157),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: ClipPath(
              clipper: BottomBackgroundClipper(),
              child: Container(
                color: const Color.fromARGB(255, 11, 69, 157),
              ),
            ),
          )
        ],
      ),
    );
  }
}
