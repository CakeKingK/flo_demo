import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style.dart';

Container appBar() {
  return Container(
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
      ],
    ),
  );
}
