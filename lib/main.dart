import 'package:elancer_calculator/screens/home_screen.dart';
import 'package:elancer_calculator/screens/launch_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen':(context) => const LaunchScreen(),
        '/home_screen':(context) =>const HomeScreen(),
      },
    );
  }
}
