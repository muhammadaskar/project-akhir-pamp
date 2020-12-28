import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projek_akhir/ui/AkademikPage.dart';

import '../constants.dart';

class BottomNavigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => bottomNavigationBar();


}

class bottomNavigationBar extends State<BottomNavigation>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 4, right: 4),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 20,
            color: kPrimaryColor.withOpacity(0.38),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // Padding(padding: EdgeInsets.only(left: 5, right: 5)),
          IconButton(
              icon: Icon(Icons.home, size: 30),
              onPressed: (){}
          ),
          // Padding(padding: EdgeInsets.only(left: 15, right: 5)),
          IconButton(
              icon: Icon(Icons.book, size: 25),
              onPressed: (){}
          ),
          // Padding(padding: EdgeInsets.only(left: 15, right: 5)),
          IconButton(
              icon: Icon(Icons.add_circle, size: 30),
              onPressed: (){}
          ),
          // Padding(padding: EdgeInsets.only(left: 15, right: 5)),
          IconButton(
              icon: Icon(Icons.assessment, size: 30),
              onPressed: (){}
          ),
          // Padding(padding: EdgeInsets.only(left: 15, right: 5)),
          IconButton(
              icon: Icon(Icons.school, size: 30),
              onPressed: (){
                Navigator.of(context).pushNamed('/academic');
              }
          )
        ],
      ),
    );
  }

}