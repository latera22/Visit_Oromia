import 'package:flutter/material.dart';
import 'package:tourism/view/calendar.dart';
import 'package:tourism/view/currencyChangePage.dart';
import 'package:tourism/view/feedback.dart';
import 'package:tourism/view/hotels.dart';
import 'package:tourism/view/lakes.dart';
import 'package:tourism/view/map.dart';
import 'package:tourism/view/mountain.dart';
import 'package:tourism/view/nationalparkPage.dart';
import 'package:tourism/view/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:[
                    SizedBox(
                      height:104,
                    ),
                    profile(),
                    titleOFhome(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            qoustion(),
            SizedBox(
              height: 14,
            ),
            Text('Few Images ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            SizedBox(
              height: 14,
            ),
            image_list(),
            mylists(),
            SizedBox(
              height: 14,
            ),
            Text('Popular Destination:', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            two_image(),

          ],
        ),
      ),
    );

  }

  Widget profile(){

    return Container(
      height: 90,
      width: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5)
      ),
      // child: Center(
      //   child: Image.asset('assets/baale1.jpg', fit: BoxFit.cover,),
      // ),
    );
  }

  Widget titleOFhome(){
    return Container(
      child: Text('welcome',
        style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 30 ),),
    );
  }
  Widget qoustion(){
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return Container(

      child: Text('Where would like to visit?',
        style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: myHeight* 0.05 ),),
    );
  }

  Widget searchbar(){
    return Container(
      width: 286,
      height: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.teal,
          width: 1,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            icon: Icon(Icons.search),
            hintText: 'Search',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget image_list(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: ClipRRect(
                child: Image.asset(
                    'assets/zway.jpg',
                    height: 100, width: 150,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: ClipRRect(
                child: Image.asset(
                    'assets/baale2.jpg',
                    height: 100, width: 150,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: ClipRRect(
                child: Image.asset(
                    'assets/sufumer.jpg',
                    height: 100, width: 150,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: ClipRRect(
                child: Image.asset(
                    'assets/lalibel.jpg',
                    height: 100, width: 150,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: ClipRRect(
                child: Image.asset(
                    'assets/wancii.jpg',
                    height: 100, width: 150,
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget two_image(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/omo-national-park-and.jpg',
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      Positioned(
                        top: 120,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.teal,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Omo',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Gedeo, Ethiopia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/rasdajen.jpg',
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      Positioned(
                        top: 120,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.teal,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'RasDashen Mnt',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Bahir dar,Ethiopia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width / 2 - 0,
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/lalibela church.jpg',
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      Positioned(
                        top: 120,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.teal,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rock-Hewn Churches\n lalibela',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Amhara,Ethiopia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width / 2 - 20,
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(
                          'assets/wancii1.jpg',
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      Positioned(
                        top: 120,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.teal,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Wenchi crater lake',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Oromia,Ethiopia',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );



  }

  Widget mylists(){
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              ' ',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NatiionalParksPage(),
                      ),
                    );
                  },
                  child: const Text('National Parks'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MountainsPage(),
                      ),
                    );
                  },
                  child: const Text('Mountains'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LakesPage(),
                      ),
                    );
                  },
                  child: const Text('Lakes'),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) => MountainsPage(),
                //       ),
                //     );
                //   },
                //   child: const Text('Mountains'),
                // ),
              ]

          ),
        ]
    );
  }
}
