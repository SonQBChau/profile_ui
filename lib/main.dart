import 'package:flutter/material.dart';
import 'package:profile_ui/ProfileColors.dart';

void main() => runApp(MyApp());

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
//          padding: EdgeInsets.all(36),
          child: Column(
            children: <Widget>[
              buildProfileHeader(),
              buildMainMenu(),
            ],
          ),
        ),
        bottomNavigationBar: buildBottomNavigationBar(),
      ),
    );
  }

  Widget buildProfileHeader(){
    return Container(
      child: Column(
        children: <Widget>[
          Icon(Icons.notifications),
          Text('Profile'),
          Row(
            children: <Widget>[
              Icon(Icons.account_circle),
              Column(
                children: <Widget>[
                  Text('Emma Watson'),
                  Text('New York'),
                ],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Followers'),
                  Text('5.7m'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Following'),
                  Text('924'),
                ],
              ),
              Column(
                children: <Widget>[
                  Text('Total Likes'),
                  Text('1.7k'),
                ],
              ),
            ],
          ),
        ],
      ),
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
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Presents'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Friends'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.beenhere),
                title: Text('Achievement'),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: (){},
              ),
            ],
          ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
        currentIndex: 0,
        onTap: (index){},
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey,),
            title:  Padding(padding: EdgeInsets.all(0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark, color: Colors.grey,),
            title:  Padding(padding: EdgeInsets.all(0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up, color: Colors.grey,),
            title:  Padding(padding: EdgeInsets.all(0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: ProfileColors.primaryColor,),
            title:  Padding(padding: EdgeInsets.all(0)),
          ),
        ],
      );
  }
}
