import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/add_note_form.dart';

class AddNotesScreen extends StatefulWidget {
  const AddNotesScreen({
    super.key,
  });

  @override
  State<AddNotesScreen> createState() => _AddNotesScreenState();
}

class _AddNotesScreenState extends State<AddNotesScreen> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title;
  final bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child:
          BlocConsumer<AddNoteCubit, AddNoteState>(listener: (context, state) {
        if (state is AddNoteFailure) {}
        if (state is AddNoteSuccess) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
        }
      }, builder: (context, state) {
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
          // bottomNavigationBar: BottomNavigationBar(
          //   items: const [
          //     BottomNavigationBarItem(
          //       icon: Icon(
          //         CupertinoIcons.delete,
          //       ),
          //       label: '',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(CupertinoIcons.add),
          //       label: '',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(CupertinoIcons.rectangle_split_3x3),
          //       label: '',
          //     ),
          //     BottomNavigationBarItem(
          //       icon: Icon(CupertinoIcons.list_bullet),
          //       label: '',
          //     ),
          //   ],
          // ),
          appBar: AppBar(
            title: Row(
              children: [
                const Text('Text Notes'),
                const SizedBox(
                  width: 90,
                ),
                const Icon(Icons.share),
                const SizedBox(
                  width: 20,
                ),
                BlocBuilder<AddNoteCubit, AddNoteState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          var currentDate = DateTime.now();
                          var formattedCurrentDate =
                              DateFormat('dd-mm-yyyy').format(currentDate);

                          var noteModel = NoteModel(
                            title: title!,
                            date: formattedCurrentDate,
                            // date: DateTime.now().toString(),
                          );
                          BlocProvider.of<AddNoteCubit>(context)
                              .addNote(noteModel);
                        } else {
                          autovalidateMode = AutovalidateMode.always;
                          setState(() {});
                        }
                      },
                      child: const Icon(Icons.check_rounded),
                    );
                  },
                ),
              ],
            ),
          ),
          body: const AddNoteForm(),
        );
      }),
    );
  }
}
