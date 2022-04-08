import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row bottomBar() {
  return Row(
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
  );
}
