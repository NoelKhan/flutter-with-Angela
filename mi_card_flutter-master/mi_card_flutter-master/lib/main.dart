import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 120.0,
                backgroundImage: AssetImage('image/noel - Copy.png'),
              ),
              Text(
                'Noel Khan',
                style: TextStyle(
                  fontFamily: 'Pattaya',
                  fontSize: 40,
                  color: Colors.greenAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Computer Engineer',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  color: Colors.greenAccent.shade200,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .3,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 400.0,
                child: Divider(
                  color: Colors.blueGrey,
                  thickness: 5,
                ),
              ),
              Card(
                color: Colors.blueGrey,
                //padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone_android_outlined,
                        color: Colors.yellowAccent,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        '+61 (0) 434 571 455',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.blueGrey,
                //padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email_outlined,
                        color: Colors.yellowAccent,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Text(
                        'noel@saphi.engineering',
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.blueGrey,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
                child: ListTile(
                  leading: Icon(
                    Icons.email_outlined,
                    color: Colors.yellowAccent,
                  ),

                  title: Text(
                    'noel5khan@gmail.com',
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  //],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// children: <Widget>[
// Container(
// height: 700.0,
// width: 100.0,
// padding: EdgeInsets.fromLTRB(15.0, 43.0, 12.0, 0),
// color: Colors.red,
// child: Text('Hello World'),
// ),
// SizedBox(
// width: 56.0,
// ),
// Center(
// child: Container(
// height: 100.0,
// width: 100.0,
// padding: EdgeInsets.fromLTRB(15.0, 43.0, 12.0, 0),
// color: Colors.yellow,
// child: Text('Container 2'),
// ),
// ),
// SizedBox(
// width: 55.0,
// ),
// Container(
// height: 700.0,
// width: 100.0,
// padding: EdgeInsets.fromLTRB(15.0, 43.0, 12.0, 0),
// color: Colors.blueAccent,
// child: Text('Container 3'),
// ),
// ],
