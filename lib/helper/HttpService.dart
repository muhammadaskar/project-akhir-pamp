import 'dart:convert';

import 'package:http/http.dart';
import 'package:projek_akhir/model/news_model.dart';

class HttpService {
  final String url = "http://192.168.1.11/ci-simple-api/index.php/api/news";
  Client client = Client();

  Future<List<News>> getNews() async {
    Response res = await get(url);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<News> news =
          body.map((dynamic item) => News.FromJson(item)).toList();
      return news;
    } else {
      throw "gagal";
    }
  }
}
