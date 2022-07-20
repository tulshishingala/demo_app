// import 'package:flutter/material.dart';

// class ListViewBuilderDemo extends StatefulWidget {
//   const ListViewBuilderDemo({Key? key}) : super(key: key);

//   @override
//   State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
// }

// class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
//   List image=[
//     'https://www.kindpng.com/picc/m/22-221463_margherita-pizza-hd-png-transparent-png.png',
//     'https://png.pngtree.com/png-clipart/20210808/original/pngtree-big-pizza-png-png-image_6611417.png',
//     'http://pizzaparadise.in/wp-content/uploads/2019/10/paneer-onion-pizza-mania.png'
//   ];
//   List name=[
//     "Piazza Paneer","Olive, Tomato","Paneer Onione"
//   ];
//   List price=[
//     "Rs.299",
//     "Rs.399",
//     "Rs.199"
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: ListView.builder(
//         itemCount:3,
//         itemBuilder: (contex,index){
//         return _itemDemo(
//           image: image[index],
//           name: name[index],
//           price: price[index]
//         );
//       }),
//     );
//   }

//   Widget _itemDemo({String? image,String? name,String? price}) {
//     return Row(
//       children: [
//         Container(
//           height: 120,
//           width: 120,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: NetworkImage(image!),fit: BoxFit.cover
//             ),
//           ),
//         ),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding:const EdgeInsets.only(left: 10),
//                 child: Text(name!),
//               ),
//               const SizedBox(height: 10,),
//               const Padding(
//                 padding: EdgeInsets.only(left: 10),
//                 child: Text("This is a Deliciase Pizza ,eating now or every week."),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: Text(price!),
//                   ),
//                   ElevatedButton(onPressed: () {}, child:const Text("Add +"))

//                 ],
//               )
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }