import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, '/home_screen');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF3F4E4F), Color(0xFF2C3639)],
          ),
        ),
        child: Text('Calculator',
            style: GoogleFonts.nunito(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: const Color(0xFFDCD7C9),
            )),
      ),
    );
  }
}
