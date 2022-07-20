import 'package:demo_app/makeover/makeoverpage2.dart';
import 'package:flutter/material.dart';

class MakeOver extends StatefulWidget {
  const MakeOver({Key? key}) : super(key: key);

  @override
  State<MakeOver> createState() => _MakeOverState();
}

class _MakeOverState extends State<MakeOver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/makeover.png'))),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Let Us Reward",
            style: TextStyle(fontSize: 30),
          ),
          const Text(
            "You,Naturally!",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MakeOverPage2()));
              });
            },
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 2,
                ),
                color: Colors.grey,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const Icon(
                Icons.arrow_back_ios_new_rounded,
              ),
            ),
          )
        ],
      ),
    );
  }
}
