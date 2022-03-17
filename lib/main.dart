import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flo_demo/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import 'package:get/get.dart';
import 'package:flo_demo/style.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.yellow[700],
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
      ),
      // home: const SplashScreen(),
      home: SplashScreen(),
    ),
  );
  //MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  bool nowPlaying = false;
  IconData playBtn = Icons.play_arrow;

  // audio player
  AudioPlayer? _player;
  AudioCache? cache;

  Duration position = new Duration();
  Duration musicRunTime = new Duration();

  Widget musicStatusBar() {
    return Slider.adaptive(
      activeColor: Colors.white,
      inactiveColor: Colors.grey[600],
      max: musicRunTime.inSeconds.toDouble(),
      value: position.inSeconds.toDouble(),
      onChanged: (value) {

      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Row(
            children: [
              IconButton(
                onPressed: () {
                  print("eq pressed");
                },
                icon: Icon(
                  Icons.equalizer_rounded,
                ),
              ),
              // Container(
              //   alignment: Alignment.center,
              //   child: Text("EQ",),
              //   width: 40.0,
              //   height: 40,
              // ),
            ],
          )),
          */

      body: Container(
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //     begin: Alignment.topLeft,
          //     end: Alignment.bottomRight,
          //     colors: [
          //       Colors.black,
          //       Colors.black,
          //     ]),
          color: Colors.black,
        ),
        // child: Padding(
        //   padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      print("eq pressed");
                    },
                    icon: Icon(
                      Icons.equalizer_sharp,
                      color: Colors.white,
                    ),
                  ),
                  /*TextButton(
                    onPressed: () {
                      print("eq text pressed");
                    },*/
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.white38),
                    ),
                    child: Text(
                      " EQ ",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      child: Text("Title", style: titleFontStyle),
                      margin: EdgeInsets.all(2),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          child: Text(
                            "singer",
                            style: singerFontStyle,
                          ),
                          margin: EdgeInsets.fromLTRB(0, 4, 0, 8),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Center(
                child: Container(
                  width: 270,
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage("images/nyancat.png"),
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Container(
                      child: Text(
                        "Playing Lylic",
                        style: playingLylicFontStyle,
                      ),
                      margin: EdgeInsets.only(top: 10),
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Text(
                        "Next Lylic",
                        style: nextLylicFontStyle,
                      ),
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    ),
                  ),
                ],
              ),
              Center(
                child: IconButton(
                  onPressed: () {
                    print("fav pressed");
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                  splashColor: Colors.transparent,
                  iconSize: 30,
                  padding: EdgeInsets.all(20),
                ),
              ),
              Expanded(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //SizedBox(height: 20),
                    musicStatusBar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.repeat,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.only(right: 45),
                          iconSize: 35,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                          ),
                          iconSize: 45,
                          splashColor: Colors.transparent,
                          splashRadius: null,
                        ),
                        IconButton(
                          onPressed: () {
                            if (!nowPlaying) {
                              setState(() {
                                playBtn = Icons.pause;
                                nowPlaying = true;

                                print("press to stop");
                              });
                            } else {
                              setState(() {
                                playBtn = Icons.play_arrow;
                                nowPlaying = false;

                                print("press to play");
                              });
                            }
                          },
                          icon: Icon(
                            playBtn,
                            color: Colors.white,
                          ),
                          iconSize: 60,
                          splashColor: Colors.transparent,
                          splashRadius: null,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.skip_next,
                            color: Colors.white,
                          ),
                          iconSize: 45,
                          splashColor: Colors.transparent,
                          splashRadius: null,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shuffle,
                          ),
                          padding: EdgeInsets.only(left: 45),
                          iconSize: 35,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.white38),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "유사곡",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          width: 60,
                          //margin: EdgeInsets.only(right: 30),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(
                          Icons.wifi,
                          color: Colors.white,
                        ),
                        Expanded(child: SizedBox()),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.queue_music,
                            color: Colors.white,
                          ),
                          //padding: EdgeInsets.only(left: 30),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}

Widget swiperBox = Swiper(
  itemCount: 7,
  itemBuilder: (context, index) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 150,
      child: Image.asset("FLO_Splash-Img3x(1242x2688).png"),
    );
  },
);

// Widget musicList = GridView.builder(gridDelegate: sliver, itemBuilder: itemBuilder);
Widget musicList = Swiper(
  itemCount: 3,
  itemBuilder: (context, index) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      height: 150,
      child: Image.asset("FLO_Splash-Img3x(1242x2688).png"),
    );
  },
);

class MusicPicture {
  final Image albumArt;
  final String musicName;

  MusicPicture(this.albumArt, this.musicName);
}

class MusicPlayPage extends StatefulWidget {
  const MusicPlayPage({Key? key}) : super(key: key);

  @override
  State<MusicPlayPage> createState() => _MusicPlayPageState();
}

class _MusicPlayPageState extends State<MusicPlayPage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 5,
            child: Container(
              color: Colors.black54,
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.black,
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () {},
                ),
              ))
        ],
      ),
    );
  }
}
