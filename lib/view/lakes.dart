import 'package:flutter/material.dart';

class LakesPage extends StatefulWidget {
  const LakesPage({Key? key}) : super(key: key);

  @override
  State<LakesPage> createState() => _LakesPageState();
}

class _LakesPageState extends State<LakesPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Visit Ethiopia'),
      ),
      body: ListView(
        children: [
          Text('Lakes ' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 50, color: Colors.teal ),),
          Text('Lake Tana' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/abaya.jpg',
            description: 'Tana\n  Lake Tana is the largest lake in Ethiopia and the source of the Blue Nile River.'
                '  covers an area of approximately 3,600 square kilometers. '
                'The lake is surrounded by natural forests, hot springs, and waterfalls, as well as a traditional village',
          ),
          Text('Lake ziway' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/zway.jpg',
            description: 'Ziway\n Wenchi Lake is a beautiful volcanic crater lake located '
                'in the Ethiopian highlands at an altitude of about 3000 masl. It is also known as'
                ' Wonchi crater lake and is located 98 km west of Addis Ababa in Oromia Region, Ethiopia. '
                'The lake is surrounded by natural forests, hot springs, and waterfalls, as well as a traditional village',
          ),
          Text('Lake Abaya' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/abaya.jpg',
            description: 'Abaya\n Lake Abaya is a lake in the Southern Nations, Nationalities, and Peoples’'
                ' Region of Ethiopia. It is located in the Main Ethiopian Rift, east of the Guge Mountains. The town of Arba Minch lies on its southwestern shore,'
                ' and the southern shores are part of the Nechisar National Park12. The lake is 60 kilometers long and 20 wide, with a '
                'surface area of 1162 square kilometers. There are a number of islands in this lake, the largest being Aruro;'
                ' others include Gidicho, Welege, Galmaka, and Alkali.The lake is red due to a high load of suspended sediments',
          ),
          Text('Lake Abjata' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/abjata.jpg',
            description: 'Abjata\n Lake Abijata is located at about 210 km from Finfinne, in Abijata-Shala Lakes National Park. The lake  is specifically'
                ' known as one of the best bird watching locations in Africa, which is the cause for the establishment as bird sanctuary. '
                ' Myriad of domestic and exotic birds that came from Europe and different parts of the world inhibited around Lake Abijata. '
                'July to September marks the peak season of congregation and the best time to watch the birds.',
          ),
          Text('Lake Wonji' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 20, ),),
          ImageItem(
            imagePath: 'assets/wancii.jpg',
            description: 'Wonji\n Lake Chamo is a lake in the Southern Nations, Nationalities, and Peoples’ Region of southern Ethiopia. '
                'It is located in the Main Ethiopian Rift at an elevation of 1,110 meters1. The lake spans 317 km² and has a maximum depth '
                'of 14 meters1. It is just south of Lake Abaya and the city of Arba Minch, east of the Guge Mountains, and west of the Amaro Mountains1.'
                'The lake is known for its wildlife. There are lots of birds, hippos and crocodiles to see. The crocodile market is a must-see'
                ' where you will see dozens of crocodiles sunbathing in one location where you can get as close as a few meters. '
                'Hippos are more difficult to spot',
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