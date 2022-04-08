// To parse this JSON data, do
//
//     final musicData = musicDataFromJson(jsonString);

import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

MusicData musicDataFromJson(String str) => MusicData.fromJson(json.decode(str));

String musicDataToJson(MusicData data) => json.encode(data.toJson());

Future<MusicData> fetchMusicData(Client client) async {
  final respone = await client.get(Uri.parse(
      'https://grepp-programmers-challenges.s3.ap-northeast-2.amazonaws.com/2020-flo/cover.jpg'));

  return compute(parseMusicData, respone.body);
}

MusicData parseMusicData(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<MusicData>((json) => MusicData.fromJson(json)).toList();
}

class MusicData {
  MusicData({
    required this.singer,
    required this.album,
    required this.title,
    required this.duration,
    required this.image,
    required this.file,
    required this.lyrics,
  });

  String singer;
  String album;
  String title;
  int duration;
  String image;
  String file;
  String lyrics;

  factory MusicData.fromJson(Map<String, dynamic> json) => MusicData(
        singer: json["singer"],
        album: json["album"],
        title: json["title"],
        duration: json["duration"],
        image: json["image"],
        file: json["file"],
        lyrics: json["lyrics"],
      );

  Map<String, dynamic> toJson() => {
        "singer": singer,
        "album": album,
        "title": title,
        "duration": duration,
        "image": image,
        "file": file,
        "lyrics": lyrics,
      };
}
