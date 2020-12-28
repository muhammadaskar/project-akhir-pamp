import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek_akhir/helper/HttpService.dart';
import 'package:projek_akhir/model/news_model.dart';

class ListNews extends StatelessWidget {
  final HttpService httpService = HttpService();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: FutureBuilder(
        future: httpService.getNews(),
        builder: (BuildContext context, AsyncSnapshot<List<News>> snapshot) {
          if (snapshot.hasData) {
            List<News> news = snapshot.data;
            return ListView(
              children: news
                  .map(
                    (News berita) => ListTile(
                      title: Text(berita.title),
                      subtitle: Text(berita.creator),
                      // onTap: () => Navigator.of(context).push(
                      //     // MaterialPageRoute(
                      //     //   builder: (context) => ,
                      //     // ),
                      //     ),
                    ),
                  )
                  .toList(),
            );
          }
        },
      ),
    );
  }
}
