import 'dart:convert';

import 'package:http/http.dart';
import 'package:projek_akhir/model/news_model.dart';

class HttpService {
  final String url = "http://127.0.0.1/ci-simple-api/index.php/api/news";

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
