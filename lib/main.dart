import 'package:dark_and_lightmode/dark_mode_home_eg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      // ! here it recognizes the them mode of system so it will appear according to the  device system
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const LightDarkModeChaneExampleHome(),
    );
  }
}
