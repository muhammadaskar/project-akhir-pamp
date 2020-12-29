import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek_akhir/helper/HttpService.dart';
import 'package:projek_akhir/model/news_model.dart';

class ListNews extends StatelessWidget {
  final HttpService httpService = HttpService();
  List<News> _news;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
      ),
      body: FutureBuilder(
          future: httpService.getNews(),
          builder: (BuildContext context, AsyncSnapshot<List<News>> snapshot) =>
              buildCardView(context, snapshot)),
    );
  }

  Widget buildCardView(
      BuildContext context, AsyncSnapshot<List<News>> snapshot) {
    if (snapshot.hasData) {
      List<News> news = snapshot.data;
      return ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          var _news = news[index];
          return Container(
              child: Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(_news.title),
                  Text(_news.pubdate),
                  Text(_news.creator)
                ],
              ),
            ),
          ));
        },
      );
    }
  }
}
