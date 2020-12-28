import 'package:flutter/cupertino.dart';

class News{
  final int id_news;
  final String title;
  final String description;
  final String link;
  final String pubdate;
  final String creator;

  News({
      @required this.id_news,
      @required this.title,
      @required this.description,
      @required this.link,
      @required this.pubdate,
      @required this.creator});


  factory News.FromJson(Map<String, dynamic> json){
    return News(
        id_news: json['id_news'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      link : json['json'] as String,
      pubdate: json['pubdate'] as String,
      creator: json['creator'] as String
    );
  }
}