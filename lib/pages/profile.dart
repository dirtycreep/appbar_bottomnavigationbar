import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String text = "Profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.account_circle,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Icons.accessibility_new,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Icons.accessible_forward_outlined,
            ),
            onPressed: (){},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child:Text(
                  "I am a header",
                  style: TextStyle(
                    // color: Colors.white,
                    fontSize: 24,)
              ),),
            // ElevatedButton(onPressed: () => Navigator.pop(context), child: Text('Close')),
            ListTile(
              onTap: () {
                setState((){
                  text = "I am first";
                });
                Navigator.pop(context);
              },
              // trailing: ,
              title: Text("I am first",


                style: TextStyle(
                  fontSize: 20.0,
                  // color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),

            ),
            ListTile(
              onTap: () {
                setState((){
                  text = "I am second";
                });
                Navigator.pop(context);
              },
              title: Text("I am second",
                style: TextStyle(
                  fontSize: 20.0,
                  // color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),),
            ),
          ],
        ),
      ),
    );
  }
}
