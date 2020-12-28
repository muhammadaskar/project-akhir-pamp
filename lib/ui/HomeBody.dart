import 'package:flutter/material.dart';
import 'package:projek_akhir/constants.dart';
import 'HeaderWithTitleBox.dart';
import 'InformasiSlide.dart';
import 'TitleWithMoreBtn.dart';

class HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    String title = "Home";

    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
            HeaderWithTitleBox(title, size),
            TitleWithMoreBtn(title: "Information", press: (){}),
            InformasiSlide(),
            SizedBox(height: kDefaultPadding,),
          ]
      ),
    );
  }
}

