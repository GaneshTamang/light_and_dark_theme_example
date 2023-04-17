import 'package:flutter/material.dart';

class LightDarkModeChaneExampleHome extends StatefulWidget {
  const LightDarkModeChaneExampleHome({super.key});

  @override
  State<LightDarkModeChaneExampleHome> createState() =>
      _LightDarkModeChaneExampleHomeState();
}

class _LightDarkModeChaneExampleHomeState
    extends State<LightDarkModeChaneExampleHome> {
  bool isMyAppDarkMode = true;
  String? checkingEmptiness =
      'hello world !!\n Text was not Empty so printed \n Code:\n  check var empty ?? if empty print empty';
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isMyAppDarkMode ? ThemeData.dark() : ThemeData.light(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scaffold dark light mode Example '),
          centerTitle: true,
          leading: const Icon(Icons.abc),
          actions: [
            isMyAppDarkMode
                ? InkWell(
                    onTap: () {
                      setState(() {
                        isMyAppDarkMode = !isMyAppDarkMode;
                      });
                    },
                    child: const Icon(
                      Icons.sunny,
                    ),
                  )
                : InkWell(
                    onTap: () {
                      setState(() {
                        isMyAppDarkMode = !isMyAppDarkMode;
                      });
                    },
                    child: const Icon(Icons.dark_mode),
                  ),
          ],
        ),
        body: Center(
            child: Text(
          checkingEmptiness ?? 'isEmpty',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
          ),
        )),
      ),
    );
  }
}
