import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projek_akhir/constants.dart';
import 'package:projek_akhir/ui/HomeBody.dart';
import 'package:projek_akhir/ui/AkademikBody.dart';
import 'package:projek_akhir/ui/BottomNavigation.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: HomeBody(),
        bottomNavigationBar: BottomNavigation()
    );
  }



  AppBar buildAppBar(){
    return AppBar(
      elevation: 0,
    );
  }
}