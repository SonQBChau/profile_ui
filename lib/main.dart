import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:profile_ui/ProfileColors.dart';

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
      padding: EdgeInsets.all(20),
//      color: Colors.purpleAccent,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color(0xFF7928D1), Color(0xFF9A4DFF)
            ],
            stops: [0.3,0.5],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(right: 10),
              alignment: Alignment.centerRight,
              child: Icon(Icons.notifications_none, color: Colors.white, size: 30,)
          ),
          Container(
            alignment: Alignment.centerLeft,
              child: Text('Profile', style: TextStyle(fontSize: 40, color: Colors.white),),
          ),
          SizedBox(height: 20,),
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
                      BoxShadow(color: Colors.black54, blurRadius: 10, spreadRadius: 1)
                    ],
                  ),

              ),
              SizedBox(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Emma Watson', style: TextStyle(color: Colors.white, fontSize: 20),),
                  Text('New York', style: TextStyle(color: Colors.white),),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Column(
                    children: <Widget>[
                      Text('Followers', style: TextStyle(color: Colors.white, fontSize: 15),),
                      Text('5.7m', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),
                ),
                buildVerticalDivider(),
                Column(
                  children: <Widget>[
                    Text('Following', style: TextStyle(color: Colors.white, fontSize: 15),),
                    Text('924', style: TextStyle(color: Colors.white, fontSize: 20),),
                  ],
                ),
                buildVerticalDivider(),
                Column(
                  children: <Widget>[
                    Text('Total Likes', style: TextStyle(color: Colors.white, fontSize: 15),),
                    Text('1.7k', style: TextStyle(color: Colors.white, fontSize: 20),),
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
              margin: EdgeInsets.only(left:10, right:10),
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
