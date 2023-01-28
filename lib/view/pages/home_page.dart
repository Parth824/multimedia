import 'package:flutter/material.dart';
import 'package:multimedia/view/pages/gobles.dart';
import 'package:multimedia/view/pages/paly_audio.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Good Afternoon",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.av_timer_sharp),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "To get you Started",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...DataPalyer.k.map(
                      (e) => Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  DataPalyer.nu = DataPalyer.k.indexOf(e);
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => PalyAudio(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 120,
                                  width: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network("${e['i']}"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                child: Container(
                                  height: 35,
                                  width: 75,
                                  child: Text(
                                    "${e['Singer']}",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Try Something else",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...DataPalyer.s.map(
                      (e) => Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  DataPalyer.nu = DataPalyer.s.indexOf(e) +11;
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => PalyAudio(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 120,
                                  width: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network("${e['i']}"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                child: Container(
                                  height: 35,
                                  width: 75,
                                  child: Text(
                                    "${e['Singer']}",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                        "https://static.toiimg.com/photo/msid-94067454/94067454.jpg?82204"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "MORE LIKE",
                        style: TextStyle(
                          color: Colors.grey,
                          wordSpacing: 2,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        "Arijit",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ...DataPalyer.l.map(
                      (e) => Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  DataPalyer.nu = DataPalyer.l.indexOf(e) +11 +11;
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => PalyAudio(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 120,
                                  width: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network("${e['i']}"),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
                                child: Container(
                                  height: 35,
                                  width: 75,
                                  child: Text(
                                    "${e['Singer']}",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
