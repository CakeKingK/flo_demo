import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class musicStatusPanel extends StatefulWidget {
  const musicStatusPanel({Key? key}) : super(key: key);

  @override
  State<musicStatusPanel> createState() => _musicStatusPanelState();
}

class _musicStatusPanelState extends State<musicStatusPanel> {
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
      onChanged: (value) {},
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  nowPlaying = true;
                  setState(() {
                    playBtn = Icons.pause;
                    nowPlaying = true;

                    print("press to stop");
                  });
                } else {
                  nowPlaying = false;
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
        )
      ],
    );
  }
}




Column musicController() {
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
      onChanged: (value) {},
    );
  }

/*
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  */
  return Column(
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
                nowPlaying = true;
                /*setState(() {
                                playBtn = Icons.pause;
                                nowPlaying = true;

                                print("press to stop");
                              });*/
              } else {
                nowPlaying = false;
                /*setState(() {
                                playBtn = Icons.play_arrow;
                                nowPlaying = false;

                                print("press to play");
                              });*/
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
      )
    ],
  );
}
