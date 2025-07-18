import 'package:flutter/material.dart';
import 'package:tourism/view/about.dart';
import 'package:tourism/view/calendar.dart';
import 'package:tourism/view/currencyChangePage.dart';
import 'package:tourism/view/feedback.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tourism/view/homePage.dart';
import 'package:tourism/view/map.dart';
import 'package:tourism/view/search.dart';

class sidebar extends StatefulWidget {
  const sidebar({Key? key}) : super(key: key);

  @override
  State<sidebar> createState() => _sidebarState();
}

class _sidebarState extends State<sidebar> {

  @override


  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: Text("MENU"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          SizedBox(
            height: 15.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon( Icons.search),
            title: Text("Search"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SearchPage()),
              );
            },
          ),
          SizedBox(
            height: 15.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon( Icons.calendar_month),
            title: Text("Calender Converter"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CalendarPage()),
              );
            },
          ),
          SizedBox(
            height: 15.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon( Icons.currency_exchange),
            title: Text("Currency Converter"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
          SizedBox(
            height: 15.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon( Icons.map),
            title: Text("Map"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EthiopiaMap()),
              );
            },
          ),
          SizedBox(
            height: 15.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon( Icons.feedback),
            title: Text("Feedback"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CommentScreen()),
              );
            },
          ),
          SizedBox(
            height: 15.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),

          ListTile(
            leading: Icon( Icons.info),
            title: Text("About"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),
          SizedBox(
            height: 15.0,
            child: Divider(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
            onTap: () {
              Share.share(
              'Check out this cool app!',
              subject: 'Sharing App',);
              },
          )
        ],
      ),
    );
  }
}
