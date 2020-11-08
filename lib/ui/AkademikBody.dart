
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projek_akhir/ui/AkademikPage.dart';

import '../constants.dart';
import 'HeaderWithTitleBox.dart';
import 'InformasiSlide.dart';
import 'TitleWithMoreBtn.dart';

class AkademikBody extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    String title = "Akademik";

    return Container(
      child: Column(
          children: <Widget>[
            HeaderWithTitleBox(title, size),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: kPrimaryColor,
                      onPressed: (){},
                      child: Text("Pra KRS", style: TextStyle(color: Colors.white),)
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              width: size.width * 0.8,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: kPrimaryColor,
                      onPressed: (){},
                      child: Text("Sanksi Akademik", style: TextStyle(color: Colors.white),)
                  )
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              width: size.width * 0.8,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FlatButton(
                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                      color: kPrimaryColor,
                      onPressed: (){},
                      child: Text("Semester Antara", style: TextStyle(color: Colors.white),)
                  )
              ),
            ),
            SizedBox(height: kDefaultPadding,),
          ]
      ),
    );
  }

}
