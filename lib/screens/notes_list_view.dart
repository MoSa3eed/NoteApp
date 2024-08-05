import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
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
    );
  }
}
