import 'package:flutter/material.dart';
import 'package:note_app/screens/third_screen.dart';

class SeconedScreen extends StatelessWidget {
  const SeconedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset('assets/images/two.png'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Share your notes',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Easy communicate and share notes',
            style: TextStyle(color: Colors.black.withOpacity(.7), fontSize: 18),
          ),
          Text(
            'with your colleagues',
            style: TextStyle(color: Colors.black.withOpacity(.7), fontSize: 18),
          ),
          const SizedBox(
            height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(8)),
              ),
            ],
          ),
          const SizedBox(
            height: 35,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                  (route) => false);
            },
            child: const Text(
              'Skip',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
