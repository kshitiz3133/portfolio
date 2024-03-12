import 'package:flutter/material.dart';
import 'package:portfolio/responsivedecider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return Dekstop();
        } else {
          return Mobile();
        }
      },
    );
  }
}

