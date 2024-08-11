import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:note_app/screens/first_screen.dart';
import 'package:note_app/screens/pageViews.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const ViewsScreens()),
          (route) => false);
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          Container(
            width: 120,
            child: Image.asset('assets/images/splash.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Note',
                style: TextStyle(color: Colors.orange, fontSize: 20),
              ),
              Text(
                'Me',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Start taking notes',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          const Text(
            'whenever you want',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
