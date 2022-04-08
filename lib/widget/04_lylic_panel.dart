import 'package:flutter/cupertino.dart';

import '../style.dart';

Column LylicPanel() {
  return Column(
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
  );
}
