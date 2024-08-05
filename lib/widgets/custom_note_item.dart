import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          note.title,
        ),
        minLeadingWidth: 2,
        minVerticalPadding: 10,
        contentPadding: const EdgeInsets.all(8),
        leading: Container(
          width: 3,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.blue[900]),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              note.date,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
              ),
            )
          ],
        ),
        // subtitle: Text('22 May'),
        // trailing: Icon(Icons.keyboard_control_sharp),
      ),
    );
  }
}
