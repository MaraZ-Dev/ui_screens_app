import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnapchatScreen extends StatelessWidget {
  const SnapchatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/telegramBg.jpg"),
            ),
          ),
          title: const Text(
            "Maraz Dev",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(10.0),
              width: 100,
              height: 20,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.call),
                    color: Colors.black,
                    padding: EdgeInsets.only(left: 12, right: 0),
                    constraints: BoxConstraints(minWidth: 2),
                  ),
                  const VerticalDivider(
                    width: 29,
                    thickness: 3,
                    color: Colors.white,
                  ),
                  IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.only(left: 0.01),
                    icon: Icon(Icons.videocam),
                    color: Colors.black,
                    constraints: BoxConstraints(minWidth: 2),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios_rounded),
              color: Colors.black,
              constraints: BoxConstraints(maxHeight: 20),
              iconSize: 25.0,
            )
          ],
        ),
        body: Stack(
          children: [
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  thickness: 1,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.grey[300]),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_alt_rounded),
                          iconSize: 30,
                          color: Colors.grey[600],
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 50,
                        margin: EdgeInsets.only(left: 10),
                        padding: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.grey[300]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 140,
                              child: TextField(
                                cursorColor: Colors.red,
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Send a chat",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 15.0,
                                    )),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mic),
                              color: Colors.grey[600],
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.sentiment_very_satisfied),
                        iconSize: 31,
                        constraints: BoxConstraints(maxWidth: 40),
                        color: Colors.grey[600],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.copy_outlined),
                        constraints: BoxConstraints(maxWidth: 40),
                        iconSize: 31,
                        color: Colors.grey[600],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.airplanemode_active_outlined),
                        iconSize: 31,
                        color: Colors.grey[600],
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
