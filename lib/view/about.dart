import 'package:flutter/material.dart';
class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("About"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "About Our App 💎",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Text(
                "developed by SFFY.",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "Version: 2.0",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                "Developers 💻🖥:",
                style: TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                "- Segni Bultossa",
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                "- Fasika Mulugeta",
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                "- Filimon Fano ",
                style: TextStyle(fontSize: 16.0),
              ),
              Text(
                "- Yishak Kidane",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
