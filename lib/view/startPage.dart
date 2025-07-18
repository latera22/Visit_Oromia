import 'package:flutter/material.dart';
import 'package:tourism/view/homePage.dart';
import 'package:tourism/view/navBar.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Stack(
        children: [

        // background image
        Positioned.fill(
        child: Image.asset(
        'assets/lalibela church.jpg',
        fit: BoxFit.cover,
    ),
    ),

    // buttons and text
      Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric( horizontal: 16.0, vertical: 200),
        child: Text(
          'Visit Ethiopia',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
        Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NavBar(),
                  ),
                );
              },
              child: Text('Get Started'),
            ),
          ),
        )
    ],
      ),
        ],
        ),
        ),
    );
  }
}