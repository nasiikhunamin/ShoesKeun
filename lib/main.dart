import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_app/page/introduction_shcreen.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShoesKeun',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const IntroductionScreen(),
    );
  }
}
