import 'package:appbar_bottomnavigationbar/pages/chat.dart';
import 'package:appbar_bottomnavigationbar/pages/dashboard.dart';
import 'package:appbar_bottomnavigationbar/pages/profile.dart';
import 'package:appbar_bottomnavigationbar/pages/settings.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Settings(),
  ];

  Widget currentScreen = Dashboard();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageStorage(
       child: currentScreen,
       bucket: bucket,
     ),

      bottomNavigationBar: BottomAppBar(

        // shape: CircularProgressIndicator,
        child: Container(
          height: 60,
          child: Row(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 100,
                      onPressed: (){
                        setState(() {
                          currentScreen = Dashboard();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.dashboard,
                            color: currentTab == 0? Colors.blue: Colors.grey,),
                          Text("Dashboard",
                            style: TextStyle(
                            color: currentTab == 0? Colors.blue: Colors.grey,),),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 100,
                      onPressed: (){
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.account_circle,
                            color: currentTab == 1? Colors.blue: Colors.grey,),
                          Text("Profile",
                            style: TextStyle(
                              color: currentTab == 1? Colors.blue: Colors.grey,),),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 100,
                      onPressed: (){
                        setState(() {
                          currentScreen = Chat();
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.chat,
                            color: currentTab == 2? Colors.blue: Colors.grey,),
                          Text("Chat",
                            style: TextStyle(
                              color: currentTab == 2? Colors.blue: Colors.grey,),),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 90,
                      onPressed: (){
                        setState(() {
                          currentScreen = Settings();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.settings,
                            color: currentTab == 3? Colors.blue: Colors.grey,),
                          Text("Settings",
                            style: TextStyle(
                              color: currentTab == 3? Colors.blue: Colors.grey,),),
                        ],
                      ),
                    )
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}