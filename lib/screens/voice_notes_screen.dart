import 'package:flutter/material.dart';

class VoiceNotesScreen extends StatefulWidget {
  const VoiceNotesScreen({super.key});

  @override
  State<VoiceNotesScreen> createState() => _VoiceNotesScreenState();
}

class _VoiceNotesScreenState extends State<VoiceNotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Voice Notes'),
            const SizedBox(
              width: 125,
            ),
            GestureDetector(
              onTap: () {
                // var currentDate = DateTime.now();
                // var formattedCurrentDate =
                //     DateFormat('dd-mm-yyyy').format(currentDate);

                // var noteModel = NoteModel(
                //   title: title ?? '',
                //   date: formattedCurrentDate,
                // date: DateTime.now().toString(),
                // );
              },
              child: const Icon(Icons.check_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
