// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:note_app/widgets/custom_text_field.dart';

// class AddNoteForm extends StatefulWidget {
//   const AddNoteForm({super.key});

//   @override
//   State<AddNoteForm> createState() => _AddNoteFormState();
// }

// class _AddNoteFormState extends State<AddNoteForm> {
//   // final GlobalKey<FormState> formKey = GlobalKey();

//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//   String? title;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 5, right: 5, left: 5, bottom: 5),
//       child: ListView(
//         children: [
//           CustomTextField(
//             validator: (value) {
//               if (value?.isEmpty ?? true) {
//                 return 'Field is required';
//               } else {
//                 return null;
//               }
//             },
//             onSaved: (value) {
//               title = value;
//             },
//             hint: 'Add Text note',
//             maxLines: 19,
//           ),
//           BottomNavigationBar(
//             elevation: .5,
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: Colors.white,
//             // selectedItemColor: const Color(0xff1356B8),
//             items: const [
//               BottomNavigationBarItem(
//                 icon: Icon(
//                   CupertinoIcons.delete,
//                 ),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.rectangle_split_3x3),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.textformat),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.list_bullet),
//                 label: '',
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(CupertinoIcons.list_bullet),
//                 label: '',
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
