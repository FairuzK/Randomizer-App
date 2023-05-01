import 'package:flutter/material.dart';
import 'range_selector_page.dart';

void main() {
  runApp(const AppWidget ());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Randomizer',
      home: RangeSelectorPage(),
    );
  }
}


