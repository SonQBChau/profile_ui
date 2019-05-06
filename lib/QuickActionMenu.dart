import 'package:flutter/material.dart';
import 'dart:math';

class QuickActionMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left:10,right: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            QuickActionCard(Color(0xFF00A2E3),Color(0xFF0075D1),'microphone.png', 'Live', 'Broadcast' ),
            SizedBox(width: 10,),
            QuickActionCard(Color(0xFF9A4DFF),Color(0xFF882DEB),'wallet.png', 'Live', 'Broadcast' ),
            SizedBox(width: 10,),
            QuickActionCard(Color(0xFFCF3110),Color(0xFFBA110E),'joystick.png', 'Live', 'Broadcast' ),
          ],
        ),
      ),
    );
  }
}


class QuickActionCard extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String imgName;
  final String text1;
  final String text2;

  const QuickActionCard(this.color1, this.color2, this.imgName, this.text1, this.text2);



  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            height: 100,
            width: 180,
            padding: EdgeInsets.only(left: 10, top: 10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [0.3, 0.7],
                colors: [
                  color1,
                  color2,
                ],
              ),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  text2,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Opacity(
            opacity: 0.6,
            child: Transform.translate(
              offset: Offset(50, 27),
              child: Transform.scale(
                scale: 0.8,
                child: Transform.rotate(
                  angle: -pi/4,
                  child: ClipPath(
                    clipper: _BackgroundImageClipper(),
                    child: Container(
                      height: 100,
                      width: 180,
                      padding: EdgeInsets.only(left: 10, top: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/${imgName}'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class _BackgroundImageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = new Path();
    path.moveTo(0.0, 0.0);
    path.lineTo(size.width, size.height + 80);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}