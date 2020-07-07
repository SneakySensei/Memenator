import 'dart:convert';

import 'package:http/http.dart';

class Meme {

  static final String username = "memenatorapi";
  static final String password = "1234@abcd";
  static Map templates = {};

  static Future<Map> getMemes() async{
    Response response = await get("https://api.imgflip.com/get_memes");
    templates = json.decode(response.body);
    return templates;
  }

  // MEME OBJECTS
  String id;
  String name;
  String url;
  int width;
  int height;
  int boxCount;

  Meme({this.id, this.name, this.url, this.width, this.height, this.boxCount});

  Future<Map> postMeme() async{

  }

}