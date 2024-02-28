import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_sill_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Hide the status bar when the app starts
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return MaterialApp(
      title: 'The Sill',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Monument',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
