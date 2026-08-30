import 'package:flutter/material.dart';
import 'package:islami_c20_dokki/app_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var text = AppText();
    return MaterialApp();
  }
}
