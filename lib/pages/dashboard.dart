import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  String text = "Dashboards";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.dashboard,
            ),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(
              Icons.accessible_forward,
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
