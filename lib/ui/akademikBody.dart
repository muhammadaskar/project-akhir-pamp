import 'package:flutter/material.dart';
import 'package:projek_akhir/constants.dart';
import 'HeaderWithTitleBox.dart';
import 'InformasiSlide.dart';
import 'TitleWithMoreBtn.dart';

class akademikBody extends StatelessWidget {


  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderWithTitleBox(size: size),
            TitleWithMoreBtn(title: "Informasi", press: (){}),
            InformasiSlide(),
            SizedBox(height: kDefaultPadding,),
        ]
      ),
    );
  }
}

