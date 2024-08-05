import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/screens/seconed_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset('assets/images/one.png'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Create variety types of notes',
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'To-do lists, reminders,text,voice,',
            style: TextStyle(color: Colors.black.withOpacity(.7), fontSize: 18),
          ),
          Text(
            'photo,routes and sketch notes',
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
                  MaterialPageRoute(
                      builder: (context) => const SeconedScreen()),
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
