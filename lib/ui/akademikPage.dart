import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:projek_akhir/constants.dart';
import 'package:projek_akhir/ui/akademikBody.dart';


class akademikPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: akademikBody(),
      bottomNavigationBar: Container(
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
          children: <Widget>[
            IconButton(
                icon: SvgPicture.asset("assets/icons/icons8-home.svg"),
                onPressed: (){}
                )
          ],
        ),
      ),

    );
        }



      AppBar buildAppBar(){
        return AppBar(
          elevation: 0,
    );
  }
}