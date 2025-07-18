import 'package:flutter/material.dart';

class NatiionalParksPage extends StatefulWidget {
  const NatiionalParksPage({Key? key}) : super(key: key);

  @override
  State<NatiionalParksPage> createState() => _NatiionalParksPageState();
}

class _NatiionalParksPageState extends State<NatiionalParksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Visit Ethiopia'),
      ),
      body: ListView(
        children: [
          Text("National Parks", style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 50, color: Colors.teal ),),
          Text("Bale National Park", style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/omo-national-park-and.jpg',
            description: 'Bale \n Bale National Park is a protected area located in the southeastern part of Ethiopia, in the Oromia Region. '
                'The park covers an area of approximately 2,150 square kilometers and'
                ' is known for its diverse range of habitats and wildlife.'
                'The park has a diverse range of wildlife including elephants, giraffes, zebras, lions, and leopards.and '
                'also endemic species of ethiopia found in this park.'

            ,
          ),
          Text("Semien Mountains National Park", style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/semien.jpg',
            description: 'Semien\n  Semien Mountains National Park, in northern Ethiopia is a spectacular landscape, where '
                'massive erosion over millions of years has created jagged mountain peaks, deep valleys and'
                ' sharp precipices dropping some 1,500 m. The park is of global significance for biodiversity conservation '
                'because it is home to globally threatened species, including the iconic Walia ibex, a wild mountain goat found'
                ' nowhere else in the world,the Gelada baboon and the Ethiopian wolf.',
          ),
          Text("Nechisar National Park", style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/nechisar.jpg',
            description: 'Nechisar\n Nechisar National Park is a protected area located in the southern part of Ethiopia,'
                ' near the city of Arba Minch.The park covers an area of approximately 514 square kilometers and'
                ' is home to a diverse range of wildlife and ecosystems.'
                'One of the highlights of Nechisar National Park is Lake Abaya,'
                ' a large freshwater lake that is home to several species of fish and aquatic birds',
          ),
          Text("Omo National Park", style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/omo-national-park-and.jpg',
            description: 'Omo\n The Omo National Park is a national park in Ethiopia. '
                'It was established in 1974 and covers an area of 7,500 square kilometers (2,900 sq mi). '
                'The park is located at the southern end of the Ethiopian Rift Valley.'
                'The park has a diverse range of wildlife including elephants, giraffes, zebras, lions, and leopards.'
                ' The park also has many different types of birds including ostriches and vultures.'
                'Visiting the OMO National Park will give you the opportunity to see some of Africa’s '
                'most iconic animals in their natural habitat.'
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
