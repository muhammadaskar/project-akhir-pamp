import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projek_akhir/constants.dart';
import 'package:projek_akhir/ui/HomeBody.dart';
import 'package:projek_akhir/ui/AkademikBody.dart';
import 'package:projek_akhir/ui/BottomNavigation.dart';


class AkademikPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: buildAppBar(),
        body: AkademikBody(),
        bottomNavigationBar: BottomNavigation()
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
    );
  }

}