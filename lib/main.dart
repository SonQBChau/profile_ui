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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
    return Container();
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
