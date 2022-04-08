import 'package:flutter/cupertino.dart';

Center AlbumArt() {
  return Center(
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
  );
}
