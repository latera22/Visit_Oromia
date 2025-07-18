import 'package:flutter/material.dart';

class MountainsPage extends StatefulWidget {
  const MountainsPage({Key? key}) : super(key: key);

  @override
  State<MountainsPage> createState() => _MountainsPageState();
}

class _MountainsPageState extends State<MountainsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Visit Ethiopia'),
      ),
      body: ListView(
        children: [
          Text('Mountain' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 40, ),),
          Text('Ras Dashen Mountain ' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 25, ),),
          ImageItem(
            imagePath: 'assets/rasdashe.jpg',
            description: 'Ras dashen\n  is the highest mountain in Ethiopia and'
                ' the tenth highest mountain in Africa, reaching an elevation of 4,550 meters (14,930 ft).'
                ' It is located in the Simien Mountains National Park in the Amhara Region of Ethiopia. '
                'The mountain is part of an area of rugged mountains, steep ravines, and many rare and endemic species1. '
                'The name “Ras Dashen” is a corruption of its Amharic name, “Ras Dejen,” which means "the general who fights in front of the Emperor"1',
          ),
          Text('Bale Mountains ' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 25, ),),
          ImageItem(
            imagePath: 'assets/bale.jpg',
            description: 'Bale\n is another tourist attraction  '
                'with some endemic species which only found in ethiopia . '
                'eatures decorations resembling windows on all sides. '
                'The obelisk ends in a semi-circular top part, which used to be enclosed by metal frames. ',
          ),
          Text('Semien Mountains ' ,style: TextStyle(
            fontWeight: FontWeight.bold,fontSize: 25, ),),
          ImageItem(
            imagePath: 'assets/chamo.jpg',
            description: 'Semien\n  Mountains are located in amhara region ethiopia  '
                '. The mountain have some endemic species like walia ibex and so on',
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
