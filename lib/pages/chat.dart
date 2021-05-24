import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({Key key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  String text = "Chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.chat,
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
