import 'package:flutter/material.dart';

class DashScren extends StatefulWidget {

  @override

  _DashScreenState createState() => _DashScreenState();

}


class _DashScreenState extends State<DashScren> {

  @override
  Widget build(BuildContext context) {

    Color background = Color(0xff8e44ad);


    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          color:background,
        ),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              header(),
              listBackgroundButton(),
            ],
          ),
        )
      ],

    );
  }


  Widget header(){

    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("assets/logo-white.png", width: 50, height: 50,),
              SizedBox(width: 10,),
              Text("Viktor", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)
            ],
          ),
          Icon(Icons.keyboard_arrow_down, color: Colors.white, )
        ],
      ),
    );

  }



  Widget listBackgroundButton(){
    return Column(
      children: <Widget>[
        backgroundButton(),
      ],
    );
  }


  Widget backgroundButton(){
    return Material(

    );
  }


}