import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;

void main() {
  runApp(EthiopiaMap());
}

class EthiopiaMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text("Ethiopian Map", style: TextStyle(
          backgroundColor: Colors.white, color: Colors.black,
        ),
            ),
                backgroundColor: Colors.white,
        ),
        body: FlutterMap(
          options: MapOptions(
            center: latLng.LatLng(9.145, 38.759722),
            zoom: 6.0,
          ),
          children: [
            // Add Ethiopian regions and city polygons here...
          TileLayer(
          urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
          subdomains: const ['a', 'b', 'c'],
        ),
       ]
        ),
      ),
    );
  }
}