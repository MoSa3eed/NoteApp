import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/screens/add_notes_screen.dart';
import 'package:note_app/screens/no_note_screen.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  final bool isEmpty = false;
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AddNotesScreen(),
              ),
            );
          },
          child: Icon(
            Icons.note_alt_outlined,
            size: 35,
            color: Colors.blue[900],
          ),
        ),
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Text Notes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Icon(Icons.search)
            ],
          ),
        ),
        body: isEmpty
            ? const NoNoteScreen()
            : BlocBuilder<NotesCubit, NotesState>(
                builder: (context, state) {
                  List<NoteModel> notes =
                      BlocProvider.of<NotesCubit>(context).notes ?? [];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ListView.builder(
                      itemCount: notes.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: NotesItem(
                            note: notes[index],
                          ),
                        );
                      },
                      // children: [
                      // Card(
                      //   child: ListTile(
                      //     title: Text(
                      //         'Mohamed Saeed Abdelhai Mohamed Ahmed tttttttttscvs nmmmmmmmmm'),
                      //     minLeadingWidth: 2,
                      //     minVerticalPadding: 10,
                      //     contentPadding: EdgeInsets.all(8),
                      //     leading: Container(
                      //       width: 3,
                      //       height: double.infinity,
                      //       decoration: BoxDecoration(color: Colors.blue[900]),
                      //     ),
                      //     subtitle: Text('22 May'),
                      //     trailing: Icon(Icons.keyboard_control_sharp),
                      //   ),
                      // )
                      // ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
