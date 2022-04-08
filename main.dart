import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

import 'import_list.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        //primaryColor: Colors.yellow[700],
        // colorScheme:
        //     ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
      ),
      // home: const SplashScreen(),
      home: const MyApp(),
    ),
  );
  //MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

final List<String> tl = ['', '', '', ''];
final List<String> tl2 = ['', '', '', ''];
final List<String> imgList = [
  'images/nyancat.png',
  'images/profile.jpg',
  'images/eq.webp',
  'images/main_image.jpg',
  // 'http://placeimg.com/300/180/any',
  // 'http://placeimg.com/300/180/any',
  // 'http://placeimg.com/300/180/any',
  // 'http://placeimg.com/300/180/any',
  // 'http://placeimg.com/300/180/any',
];

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(color: Colors.black),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  //margin: EdgeInsets.only(bottom: 20),
                  child: Swiper(
                    //viewportFraction: 0.5,
                    //set how much % show previous or next image
                    control: const SwiperControl(
                      color: Colors.transparent,
                    ),
                    autoplay: true,
                    pagination: SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: new DotSwiperPaginationBuilder(
                        color: Colors.grey[800],
                        activeColor: Colors.blue,
                        size: 6,
                      ),
                      //margin: EdgeInsets.only(top: 10),
                    ),
                    duration: 500,
                    //scale: 10, // image is magnifed when changed
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 30),
                        child: Image.network(
                          imgList[index],
                          //fit: BoxFit.cover,
                        ),
                      );
                    },
                    itemCount: imgList.length,
                  ),
                ),

                /*Container(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                  ),
                ),*/
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Title show me",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Swiper(
                        control: const SwiperControl(),
                        //autoplay: true,
                        //scale: 10, // image is magnifed when changed
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(
                            imgList[index],
                            fit: BoxFit.fill,
                          );
                        },
                        itemCount: 10,
                      ),
                      height: 288,
                      width: 188,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "recommended list",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(),
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Swiper(
                        control: const SwiperControl(),
                        //autoplay: true,
                        //scale: 10, // image is magnifed when changed
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(
                            tl[index],
                            fit: BoxFit.fill,
                          );
                        },
                        itemCount: 10,
                      ),
                      height: 288,
                      width: 188,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Theme songs",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(),
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Swiper(
                        control: const SwiperControl(),
                        //autoplay: true,
                        //scale: 10, // image is magnifed when changed
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(
                            tl2[index],
                            fit: BoxFit.fill,
                          );
                        },
                        itemCount: 10,
                      ),
                      height: 288,
                      width: 188,
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Editor`s Pick",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(),
                    Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      alignment: Alignment.centerLeft,
                      child: Swiper(
                        control: const SwiperControl(),
                        //autoplay: true,
                        //scale: 10, // image is magnifed when changed
                        itemBuilder: (BuildContext context, int index) {
                          return Image.network(
                            imgList[index],
                            fit: BoxFit.fill,
                          );
                        },
                        itemCount: imgList.length,
                      ),
                      height: 288,
                      width: 188,
                    ),
                  ],
                ),
              ],
            )));
  }
}

////* music player page
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

  Duration position = const Duration();
  Duration musicRunTime = const Duration();

  Widget musicStatusBar() {
    return Slider.adaptive(
      activeColor: Colors.white,
      inactiveColor: Colors.grey[600],
      max: musicRunTime.inSeconds.toDouble(),
      value: position.inSeconds.toDouble(),
      onChanged: (value) {},
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
        ),
        child: Column(
          children: [
            appBar(),
            MusicInfoPanel(),
            AlbumArt(),
            LylicPanel(),
            FavoriteButton(),
            const musicStatusPanel(),
            bottomBar(),
          ],
        ),
      ),
    );
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
