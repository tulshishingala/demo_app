import 'package:demo_app/makeover/drawerpage.dart';
import 'package:flutter/material.dart';

class MakeOverPage2 extends StatefulWidget {
  const MakeOverPage2({Key? key}) : super(key: key);

  @override
  State<MakeOverPage2> createState() => _MakeOverPage2State();
}

class _MakeOverPage2State extends State<MakeOverPage2> {
  List<String> images = [
    "assets/images/face.png",
    "assets/images/skin.png",
    "assets/images/eyes.png",
    "assets/images/lips1.png",
    "assets/images/makeup.jpg",
    "assets/images/lipstick.png",
    "assets/images/cosmetic.jpg",
    "assets/images/bestkit.jpg",
  ];
  List<String> title = [
    'Face',
    'Skin',
    'Eyes',
    'Lips',
    'Makeup',
    'Lipstick-kit',
    'Cosmetic',
    'Bridle-kit',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerPage(),
      appBar: AppBar(
        actions: const [Icon(Icons.person_add)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Welcome,",
              style: TextStyle(fontSize: 30),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Our Wardi Cosmentics App",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: "Search Cosmetics Product",
                label: Text("Search"),
                prefixIcon: Icon(
                  Icons.search,
                ),
                iconColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Text("Category", style: TextStyle(fontSize: 28)),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
            
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7
                ),
                itemCount: images.length,

                itemBuilder: (BuildContext context, int index) {
                  return _itemText(
                    images: images[index].toString(),
                    title: title[index],
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget _itemText({String? images, String? title}) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          child: Container(
            margin: const EdgeInsets.all(5),
            height: 350,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(
                    images!,
                  ),
                  fit: BoxFit.fill),
            ),
          ),
        ),
        Positioned(
          top: 222,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.black54,
            ),
            height: 30,
            width: 200,
            child: Center(
              child: Text(
                title!,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
