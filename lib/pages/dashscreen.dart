import 'package:flutter/material.dart';

class DashScren extends StatefulWidget {

  @override

  _DashScreenState createState() => _DashScreenState();

}


class _DashScreenState extends State<DashScren> {
  Color background = Color(0xff8e44ad);
  @override
  Widget build(BuildContext context) {



    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          color: background,
        ),
        SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              header(),
              //listBackgroundButton(),
              bottomList(),
            ],
          ),
        )
      ],

    );
  }


  Widget header() {
    return Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
            height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/logo-white.png", width: 50, height: 50,),
              SizedBox(
                width: 10,),
              Text(
                "Viktor", style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.white),)
            ],
          ),
          Icon(
            Icons.keyboard_arrow_down, color: Colors.white,)
        ],
      ),
    );
  }


  Widget listBackgroundButton() {
    return Column(
      children: <Widget>[
        backgroundButton(
          myText: "Me ajuda",
          myIconOne: Icons.help_outline,
          myIconTwo: Icons.keyboard_arrow_right,
          borderBottom: BorderSide(color: Colors.transparent),
          borderTop: BorderSide(
              color: Colors.white,
              width: 1),
        ),

        backgroundButton(
          myText: "Perfil",
          myIconOne: Icons.person,
          myIconTwo: Icons.keyboard_arrow_right,
          borderBottom: BorderSide(color: Colors.transparent),
          borderTop: BorderSide(
              color: Colors.white,
              width: 1),
        ),

        backgroundButton(
          myText: "Configurar Cartao",
          myIconOne: Icons.payment,
          myIconTwo: Icons.keyboard_arrow_right,
          borderBottom: BorderSide(color: Colors.transparent),
          borderTop: BorderSide(
              color: Colors.white,
              width: 1),
        ),

        backgroundButton(
          myText: "Configuraçoes do APP",
          myIconOne: Icons.stay_current_portrait,
          myIconTwo: Icons.keyboard_arrow_right,
          borderBottom: BorderSide(color: Colors.transparent),
          borderTop: BorderSide(
              color: Colors.white,
              width: 1),
        ),

      ],
    );
  }


  Widget backgroundButton(
    {
      String myText,
      IconData myIconOne,
      IconData myIconTwo,
      BorderSide borderBottom,
      BorderSide borderTop
    }

      ){

    return Material(
      child: Container(
        width: 350,
        padding: const EdgeInsets.only(
            top: 12, bottom: 12),
        decoration: BoxDecoration(
            color: background,
          border: Border(
            top: borderTop,
            bottom: borderBottom
          )
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Icon(myIconOne, size: 40, color: Colors.white,),
            ),
            Flexible(
              flex: 3,
              child: Text(
                myText,
                style: TextStyle(color: Colors.white),
              ),
            ),

            Flexible(
              flex: 1,
              child: Icon(myIconTwo, color: Colors.white, size: 40,),
            )
          ],
        ),
      ),
    );
  }


  Widget bottomList(){
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
         SizedBox(width: 20,),
          containerButton(),
        ],
      ),
    );
  }


  c
}
