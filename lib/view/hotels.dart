import 'package:flutter/material.dart';

class HotelsPage extends StatefulWidget {
  const HotelsPage({Key? key}) : super(key: key);

  @override
  State<HotelsPage> createState() => _HotelsPageState();
}

class _HotelsPageState extends State<HotelsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Wel Come To Ethiopia'),
      ),
      body: ListView(
        children: [
          Text('Hotels and Resorts ' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 60, ),),
          Text('Haile Hotels & Resorts' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30, ),),
          ImageItem(
            imagePath: 'assets/haile.jpg',
            description: 'About\n Haile Hotels and Resorts were founded by the legendary athlete Haile Gebreselassie. In 2010, the Olympic Gold medal winner and businessman Haile Gebreselassie joined the resort industry by launching its first 4-star resort, named Haile Resort in Hawassa. And this embarked in the opening of six other resorts in different parts of Ethiopia. All resorts have unique features with various geographical, historical, and cultural values. We can confidently say that Haile Resort is the best resort in Ethiopia. This hotel and resort company incorporates different resorts based in various locations in Ethiopia. This includes Haile Resort – Hawassa, Haile Resort – Arba Minch, Haile Resort – Adama, Haile Resort – Gondar, and Haile Resort – Ziway.',
          ),
          Text('Kuriftu Resorts' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30, ),),
          ImageItem(
            imagePath: 'assets/kuriftu.jpg',
            description: 'About\n Kuriftu is an outstanding resort located in Bishoftu, Oromia Region, just a 45-minute drive from Addis Ababa. Kuriftu Resort is one of the best resorts found in the Oromia Region. The property is located on the shores of Lake Koriftu. Hora Lake Recreation Area, Debre Zeyit Market, Debre Zeyit Mosque, Selam City Mall, and Medhane Alem Church are some of the local points of interest available in the area. Although the water park is somehow noisy, guests appreciate the hotel’s quiet location.',
          ),
          Text('Mezena Lodge Lalibela' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30, ),),
          ImageItem(
            imagePath: 'assets/mozena.jpg',
            description: 'About\n Mezena Resort & SPA is set in the historical city of Lalībela. It’s arguably the best place in Lalibela to stay. Since this resort is situated on a hill, you will get the chance to enjoy the delightful views of the landscape. Popular local points of interest include Bet Giyorgis, Church of St. George, and Bet Medhane Alem.',
          ),
          Text('Ethiopian Skylight Hotel' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 30, ),),
          ImageItem(
            imagePath: 'assets/Ethiopian-Skylight-Hotel.jpg',
            description: 'About\n A striking contemporary property with elegant design and outstanding facilities in a prime location just 5 minutes´ walk away from the Addis Ababa Bole International Airport, Ethiopian Skylight Hotel promises guests an unforgettable experience during their visit to Addis Ababa. The hotel is a convenient and aspirational accommodation option for business and leisure travellers, and people visiting this vibrant city.Be spoilt for choice with 1024 comfortably modern rooms and suites with different room types. Check out the extra modern amenities of our suites. All rooms and suites offer a host of contemporary design features and essential comforts, including full Wi-Fi connectivity, that meet the needs of long- and short-stay guests at Ethiopian Skylight Hotel',
          ),
        ],
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  final String imagePath;
  final String description;

  ImageItem({required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ImageDetailScreen(
              imagePath: imagePath,
              description: description,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

class ImageDetailScreen extends StatelessWidget {
  final String imagePath;
  final String description;

  ImageDetailScreen({required this.imagePath, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(description),
      ),
      body: Center(
        child: Image.asset(
          imagePath,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}