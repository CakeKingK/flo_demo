import 'package:flutter/material.dart';

class MusicPlayPage extends StatefulWidget {
  const MusicPlayPage({Key? key}) : super(key: key);

  @override
  State<MusicPlayPage> createState() => _MusicPlayPageState();
}

class _MusicPlayPageState extends State<MusicPlayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Image.asset(
        "FLO_Splash-Img3x(1242x2688).png",
        height: 80,
        width: 80,
      ),
    );
  }
}
