import 'package:flutter/material.dart';
import 'package:note_app/screens/hand_notes_screen.dart';
import 'package:note_app/screens/voice_notes_screen.dart';

import 'notes_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 50),
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.zero,
                      topEnd: Radius.zero,
                      bottomStart: Radius.zero,
                      bottomEnd: Radius.circular(55))),
              child: const Padding(
                padding: EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'What type',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      'of note',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      'you want',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    Text(
                      'write today?',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const NotesScreen()));
                      },
                      child: const Column(
                        children: [
                          Icon(
                            Icons.note_alt_outlined,
                            size: 50,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Text Note',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      children: [
                        Icon(
                          Icons.event_note_outlined,
                          size: 50,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'URL Note',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const HandNoteScreen()));
                      },
                      child: const Column(
                        children: [
                          Icon(
                            Icons.edit_note_rounded,
                            size: 50,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Hand Note',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const VoiceNotesScreen()));
                      },
                      child: const Column(
                        children: [
                          Icon(
                            Icons.settings_voice_sharp,
                            size: 50,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Voice Note',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Column(
                      children: [
                        Icon(
                          Icons.note_alt_rounded,
                          size: 50,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Check List',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Icon(
                          Icons.notifications_on_outlined,
                          size: 50,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Reminder',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ],
    ));
  }
}
