import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profile_ui/MainMenu.dart';

import 'package:profile_ui/ProfileColors.dart';
import 'package:profile_ui/ProfileHeader.dart';
import 'package:profile_ui/QuickActionMenu.dart';


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
              ProfileHeader(),
              QuickActionMenu(),
              MainMenu(),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
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



