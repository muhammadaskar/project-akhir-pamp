import 'package:flutter/material.dart';

import '../constants.dart';


class InformasiSlide extends StatelessWidget{
  const InformasiSlide({
    Key key,
  }) : super (key: key);

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          InformasiCard(
            image: "assets/images/Unibraw-1210x642.jpg",
            press: (){},
          ),
          InformasiCard(
            image: "assets/images/gZDpeA0s8W.jpg",
            press: (){},
          ),
          InformasiCard(
            image: "assets/images/DgIIdTkU8AELvtZ.jpeg",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class InformasiCard extends StatelessWidget{
  const InformasiCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;


  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}

