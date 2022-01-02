import 'package:flutter/material.dart';

class BasicIgScreen extends StatelessWidget {
  const BasicIgScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            children: [
              const Icon(Icons.arrow_back_outlined),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/telegramBg.jpg"),
                  radius: 50.0,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Maraz Dev",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Active 6h ago",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.call_outlined,
                size: 27,
              ),
              const SizedBox(
                width: 22,
              ),
              const Icon(
                Icons.videocam_outlined,
                size: 33,
              ),
            ],
          ),
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/IGBg.jpg",
              fit: BoxFit.fill,
            ),
            SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: Container(
                      width: 400,
                      height: 65,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(35)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.circular(50)
                              ),
                              child: const Icon(Icons.camera_alt, size: 35,),
                            ),
                            const SizedBox(width: 6,),
                            SizedBox(
                              width: 145,
                              child: TextField(
                                style: const TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Message...",
                                    hintStyle: TextStyle(
                                      color: Colors.grey[500],
                                      fontSize: 20.0,
                                    )),
                              ),
                            ),
                            const Icon(Icons.mic_rounded, size: 35,),
                            const SizedBox(width: 7,),
                            const Icon(Icons.image_outlined, size: 35,),
                            const SizedBox(width: 12,),
                            const Icon(Icons.sticky_note_2_outlined, size: 35,)
                          ],
                        ),
                      ),
                    ),
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
