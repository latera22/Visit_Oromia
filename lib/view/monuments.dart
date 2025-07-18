// import 'package:flutter/material.dart';
//
// class MonumentsPage extends StatefulWidget {
//   const MonumentsPage({Key? key}) : super(key: key);
//
//   @override
//   State<MonumentsPage> createState() => _MonumentsPageState();
// }
//
// class _MonumentsPageState extends State<MonumentsPagePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: Text('Visit Ethiopia'),
//       ),
//       body: ListView(
//         children: [
//           Text("National Parks", style: TextStyle(
//               fontWeight: FontWeight.bold,fontSize: 50, color: Colors.teal ),),
//           Text("Bale National Park", style: TextStyle(
//             fontWeight: FontWeight.bold,fontSize: 20, ),),
//           ImageItem(
//             imagePath: 'assets/omo-national-park-and.jpg',
//             description: 'Bale \n The Omo National Park is a national park in Ethiopia. '
//                 'It was established in 1974 and covers an area of 7,500 square kilometers (2,900 sq mi). '
//                 'The park is located at the southern end of the Ethiopian Rift Valley.'
//                 'The park has a diverse range of wildlife including elephants, giraffes, zebras, lions, and leopards.'
//                 ' The park also has many different types of birds including ostriches and vultures.'
//                 'Visiting the OMO National Park will give you the opportunity to see some of Africa’s '
//                 'most iconic animals in their natural habitat.'
//             ,
//           ),
//           Text("Semien Mountains National Park", style: TextStyle(
//             fontWeight: FontWeight.bold,fontSize: 20, ),),
//           ImageItem(
//             imagePath: 'assets/semien.jpg',
//             description: 'Semien\n  Bale Mountains National Park (BMNP) is a national park in Ethiopia.'
//                 ' The park encompasses an area of approximately 2,150 km2 (830 sq mi) in the Bale Mountains and Sanetti '
//                 'Plateau of the Ethiopian Highlands.The parks Afromontane habitats have one of the highest incidences of '
//                 'animal endemicity of any terrestrial habitat in the world. '
//                 'The park was nominated to the World Heritage Tentative List in 2009',
//           ),
//           Text("Nechisar National Park", style: TextStyle(
//             fontWeight: FontWeight.bold,fontSize: 20, ),),
//           ImageItem(
//             imagePath: 'assets/nechisar.jpg',
//             description: 'Nechisar\n Simien Mountains National Park, in northern Ethiopia is a spectacular landscape, where '
//                 'massive erosion over millions of years has created jagged mountain peaks, deep valleys and'
//                 ' sharp precipices dropping some 1,500 m. The park is of global significance for biodiversity conservation '
//                 'because it is home to globally threatened species, including the iconic Walia ibex, a wild mountain goat found'
//                 ' nowhere else in the world,the Gelada baboon and the Ethiopian wolf.',
//           ),
//           Text("Omo National Park", style: TextStyle(
//             fontWeight: FontWeight.bold,fontSize: 20, ),),
//           ImageItem(
//               imagePath: 'assets/omo-national-park-and.jpg',
//               description: 'Omo\n Nechisar National Park (or Nech-Sar National Park) is a national park in the Southern Nations, '
//                   'Nationalities, and Peoples Region (SNNPR) of Ethiopia. It is located in the Great Rift Valley, within the southwestern '
//                   'Ethiopian Highlands. The park is situated 510km south of Addis near the town of Arba Minch, in between Lakes Abaya and Chamo. '
//                   'From the town on the ridge of land that divides Abaya and Chamo there are commanding panoramic views all around,'
//                   ' including both lakes with Nechisar on the eastern side and, to the west, the Guge range of mountains.'
//           ),
//
//         ],
//       ),
//     );
//   }
// }
//
// class ImageItem extends StatelessWidget {
//   final String imagePath;
//   final String description;
//
//   ImageItem({required this.imagePath, required this.description});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => ImageDetailScreen(
//               imagePath: imagePath,
//               description: description,
//             ),
//           ),
//         );
//       },
//       child: Card(
//         child: Column(
//           children: [
//             Image.asset(
//               imagePath,
//               height: 200,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: 8),
//             Text(
//               description,
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 8),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ImageDetailScreen extends StatelessWidget {
//   final String imagePath;
//   final String description;
//
//   ImageDetailScreen({required this.imagePath, required this.description});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(description),
//       ),
//       body: Center(
//         child: Image.asset(
//           imagePath,
//           width: double.infinity,
//           height: double.infinity,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
