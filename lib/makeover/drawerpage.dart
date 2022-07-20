import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
 const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
          child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.brown,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://shayaristatus.com/wp-content/uploads/2018/02/Girls-Dp-Picture-300x283.jpg"),
                          fit: BoxFit.fill,
                    ),
                  ),
                ),
              const  Text("Shingala Tulsi",style: TextStyle(fontSize: 25),),
               const  Text("tulsishingala@gmail.com")
              ],
            ),
          ),
       const  ListTile(
           leading: Icon(Icons.language_outlined),
           title: Text("Language",style: TextStyle(fontSize: 18),),
         ),
          const  ListTile(
           leading: Icon(Icons.receipt_long_sharp
           
           ),
           title: Text("Recent orders",style: TextStyle(fontSize: 18),),
         ),
          const  ListTile(
           leading: Icon(Icons.wallet_giftcard),
           title: Text("Wallet",style: TextStyle(fontSize: 18),),
         ),
          const  ListTile(
           leading: Icon(Icons.password_rounded),
           title: Text("Password",style: TextStyle(fontSize: 18),),
         ),
          const  ListTile(
           leading: Icon(Icons.location_on_rounded),
           title: Text("Location",style: TextStyle(fontSize: 18),),
         ),
          const  ListTile(
           leading: Icon(Icons.support_agent_sharp),
           title: Text("Support",style: TextStyle(fontSize: 18),),
         ),
          const  ListTile(
           leading: Icon(Icons.logout),
           title: Text("Logout",style: TextStyle(fontSize: 18),),
         ),
        ],
      ));
  }
}