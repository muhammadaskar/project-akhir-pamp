import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek_akhir/model/news_model.dart';

class NewsDetail extends StatelessWidget {
  final News news;

  NewsDetail({@required this.news});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(news.title),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ListTile(
                        title: Text("Judul"),
                        subtitle: Text(news.title),
                      ),
                      ListTile(
                        title: Text("Deskripsi"),
                        subtitle: Text("${news.description}"),
                      ),
                      ListTile(
                        title: Text("Link"),
                        subtitle: Text(news.link),
                      ),
                      ListTile(
                        title: Text("Tanggal"),
                        subtitle: Text("${news.pubdate}"),
                      ),
                      ListTile(
                        title: Text("Ditulis"),
                        subtitle: Text("${news.creator}"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
