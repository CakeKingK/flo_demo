import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style.dart';

Column MusicInfoPanel() {
  return Column(
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
  );
}
