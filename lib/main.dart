import 'package:flutter/material.dart';
import 'package:islami_c20_dokki/app_screens.dart';
import 'package:islami_c20_dokki/app_text.dart';
import 'package:islami_c20_dokki/app_colors.dart';
import 'package:islami_c20_dokki/app_style.dart';
import 'package:islami_c20_dokki/app_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var colors = AppColors();
    var text = AppText();
    var style = AppStyle();
    var screens = AppScreens();
    return MaterialApp();
  }
}
