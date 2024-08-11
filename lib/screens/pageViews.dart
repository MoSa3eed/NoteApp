import 'package:flutter/material.dart';
import 'package:note_app/screens/First_screen.dart';
import 'package:note_app/screens/seconed_screen.dart';
import 'package:note_app/screens/third_screen.dart';

class ViewsScreens extends StatefulWidget {
  const ViewsScreens({super.key});

  @override
  State<ViewsScreens> createState() => _ViewsScreensState();
}

class _ViewsScreensState extends State<ViewsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      physics: const BouncingScrollPhysics(),
      children: const <Widget>[FirstScreen(), SeconedScreen(), ThirdScreen()],
    ));
  }
}
