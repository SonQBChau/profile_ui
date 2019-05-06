import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';
import 'package:profile_ui/ProfileColors.dart';
import 'package:profile_ui/quick_actions.dart';

void main() {
//  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              buildProfileHeader(),
              buildQuickActions(),
              buildMainMenu(),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Widget buildQuickActions() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left:10,right: 10),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            buildCard(Color(0xFF00A2E3),Color(0xFF0075D1),'microphone.png', 'Live', 'Broadcast' ),
            SizedBox(width: 10,),
            buildCard(Color(0xFF9A4DFF),Color(0xFF882DEB),'wallet.png', 'Live', 'Broadcast' ),
            SizedBox(width: 10,),
            buildCard(Color(0xFFCF3110),Color(0xFFBA110E),'joystick.png', 'Live', 'Broadcast' ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(Color color1, Color color2, String imgName, String text1, String text2) {
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

  Widget buildProfileHeader() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF7928D1), Color(0xFF9A4DFF)],
          stops: [0.4, 0.6],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
              padding: EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.notifications_none,
                color: Colors.white,
                size: 30,
              )),
          Container(
            alignment: Alignment.centerLeft,
            child: Text(
              'Profile',
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Container(
                width: 70,
                height: 60,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/emma-watson.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54, blurRadius: 10, spreadRadius: 1)
                  ],
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Emma Watson',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'New York',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                        '5.7m',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                buildVerticalDivider(),
                Column(
                  children: <Widget>[
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      '924',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                buildVerticalDivider(),
                Column(
                  children: <Widget>[
                    Text(
                      'Total Likes',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      '1.7k',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildVerticalDivider() {
    return Container(
      height: 30,
      width: 1,
      color: Colors.white30,
      margin: EdgeInsets.only(left: 10, right: 10),
    );
  }

  Expanded buildMainMenu() {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.camera),
            title: Text('Favourites'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text('Presents'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.group),
            title: Text('Friends'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.beenhere),
            title: Text('Achievement'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (index) {},
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: Padding(padding: EdgeInsets.all(0)),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.bookmark,
            color: Colors.grey,
          ),
          title: Padding(padding: EdgeInsets.all(0)),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.thumb_up,
            color: Colors.grey,
          ),
          title: Padding(padding: EdgeInsets.all(0)),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: ProfileColors.primaryColor,
          ),
          title: Padding(padding: EdgeInsets.all(0)),
        ),
      ],
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