import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text(" ", style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(" ", style: TextStyle(color: Colors.white, fontSize: 15),),
          )
        ],
      ),
    );
  }
}