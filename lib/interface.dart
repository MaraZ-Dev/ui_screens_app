import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_screens/basic_ig.dart';
import 'package:ui_screens/snapchat.dart';
import 'package:ui_screens/whatsapp_ui.dart';

class InterfaceScreen extends StatelessWidget {
  const InterfaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 1,
          title: Text(
            "UI Screens",
            style: TextStyle(
                fontFamily: "Vujahday",
                fontWeight: FontWeight.bold,
                fontSize: 30.0),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            SafeArea(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Center(
                    child: Container(
                      width: 140,
                      height: 140,
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(70)),
                      child: Icon(
                        Icons.screenshot,
                        size: 100,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                    ),
                    onPressed: () => Get.to(BasicIgScreen()),
                    child: Text("Instagram Chat Screen", style: TextStyle(color: Colors.black),),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    ),
                    onPressed: () => Get.to(SnapchatScreen()),
                    child: Text("Snapchat Chat Screen", style: TextStyle(color: Colors.black),),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed: () => Get.to(WhatsAppScreen()),
                    child: Text("WhatsApp Chat Screen", style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
