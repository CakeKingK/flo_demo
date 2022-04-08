import 'package:flo_demo/music_data_class.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<MusicData> fetchMusicData() async {
  final response = await http.get(
    Uri.parse(
        "https://grepp-programmers-challenges.s3.ap-northeast-2.amazonaws.com/2020-flo/song.json"),
  );

  print("json fetching check >> \n " + response.body);

  MusicData musicData = MusicData(singer: "", album: "", title: "", duration: 0, image: "", file: "", lyrics: "");

  if(response.statusCode==200){
    var jsonData = json.decode(response.body);

    musicData = MusicData.fromJson(jsonData);
    //musicData = musicDataFromJson(jsonData);
  }

  return musicData;
}
