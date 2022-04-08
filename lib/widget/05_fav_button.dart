import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Center FavoriteButton() {
  return Center(
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
  );
}
