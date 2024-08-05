import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class HandNoteScreen extends StatefulWidget {
  const HandNoteScreen({super.key});

  @override
  State<HandNoteScreen> createState() => _HandNoteScreenState();
}

class _HandNoteScreenState extends State<HandNoteScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          // Navigator.of(context).push(
          //     MaterialPageRoute(builder: (context) => const AddNotesScreen()));
        },
        child: Icon(
          Icons.note_alt_outlined,
          size: 35,
          color: Colors.blue[900],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Hand Notes'),
            const SizedBox(
              width: 85,
            ),
            const Icon(Icons.share),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();

                  // var currentDate = DateTime.now();
                  // var formattedCurrentDate =
                  //     DateFormat('dd-mm-yyyy').format(currentDate);

                  // var noteModel = NoteModel(
                  //   title: title ?? '',
                  //   date: formattedCurrentDate,
                  // date: DateTime.now().toString(),
                  // );
                  // BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              child: const Icon(Icons.check_rounded),
            ),
          ],
        ),
      ),
      body: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: ListView(
          children: [
            const CustomTextField(
              hint: 'Add note',
            ),
            BottomNavigationBar(
              elevation: .5,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              // selectedItemColor: const Color(0xff1356B8),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.delete,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.rectangle_split_3x3),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.textformat),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.list_bullet),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.list_bullet),
                  label: '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
