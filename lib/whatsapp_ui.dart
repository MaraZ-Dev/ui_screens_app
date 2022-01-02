import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey[800],
            title: Row(
              children: [
                const Icon(Icons.arrow_back),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2.0),
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Maraz Dev"),
                const Spacer(),
                const Icon(Icons.videocam_rounded),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.call),
                const SizedBox(
                  width: 20,
                ),
                const Icon(Icons.more_vert)
              ],
            )),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/whatsappBgOne.jpg",
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7.0, bottom: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 330,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          // border: Border.all(width: 1.0),
                          color: Colors.blueGrey[800],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.emoji_emotions_rounded,
                                color: Colors.grey[500],
                                size: 25,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 217,
                                child: TextField(
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Message",
                                      hintStyle: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 20.0,
                                      )),
                                ),
                              ),
                              Icon(
                                Icons.attach_file,
                                color: Colors.grey[500],
                                size: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.camera_alt,
                                color: Colors.grey[500],
                                size: 25,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green[900],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Icons.mic,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
