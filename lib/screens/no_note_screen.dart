import 'package:flutter/material.dart';

class NoNoteScreen extends StatelessWidget {
  const NoNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          // Navigator.of(context)
          // .push(MaterialPageRoute(builder: (context) => NotesScreen()));
        },
        child: Icon(
          Icons.note_alt_outlined,
          size: 35,
          color: Colors.blue[900],
        ),
      ),
      // floatingActionButton: GestureDetector(
      //   onTap: () {
      //     Navigator.of(context)
      //         .push(MaterialPageRoute(builder: (context) => NotesScreen()));
      //   },
      //   child: Container(
      //       width: 50,
      //       height: 50,
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(50),
      //           // color: Colors.white,
      //           border:
      //               Border.all(color: Colors.grey.withOpacity(.1), width: 1.5)),
      //       child: Icon(
      //         Icons.note_alt_outlined,
      //         size: 30,
      //         color: Colors.blue[900],
      //       )),
      // ),
      body: Column(
        children: [
          Container(
            width: 500,
            height: 300,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.elliptical(100, 80),
                  bottomRight: Radius.elliptical(100, 100),
                ),
                color: Colors.blue[800]),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.grey.withOpacity(.1),
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 5,
                color: Colors.grey.withOpacity(.3),
              ),
            ),
            child: Column(
              children: [
                Text(
                  textAlign: TextAlign.center,
                  'No Notes',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.8), fontSize: 20),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Click icon below to',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.6), fontSize: 18),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'start taking notes',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.6), fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
