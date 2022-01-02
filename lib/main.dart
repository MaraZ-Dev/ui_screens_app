import 'package:flutter/material.dart';
import 'package:ui_screens/basic_ig.dart';
import 'package:ui_screens/interface.dart';
import 'package:ui_screens/snapchat.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'whatsapp_ui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InterfaceScreen(),
    );
  }
}
