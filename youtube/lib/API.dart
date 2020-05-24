import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:youtube/model/Videos.dart';

const CHAVE_YOUTUBE_API = "AIzaSyDMAOjOAj7WhugEjb778kB04NU5Pm82mqA";
const ID_CUROEMVIDEO = "UCrWvhVmt0Qac3HgsjQK62FQ";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    http.Response response = await http.get(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API" //minha chave egistrada
            "&channelId=$ID_CUROEMVIDEO"
            "&q=$pesquisa");

    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);

      List<Videos> videos = dadosJson["items"].map<Videos>((map) {
        return Videos.fromJason(map);
      }).toList();
      print(dadosJson.toString());

      // List<Videos> videos = dadosJson["items"];
     // for (var video in videos) {
      //   print( video.imagem);
      //   print(
      //       "_______________________________________________________________________________ ");
      // 
      //}
    } else {}
  }
}
