import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Profile Page Flutter App',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: new MyHomePage(title: 'Profile Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text(widget.title), actions: <Widget>[
        // action button
        new IconButton(
          icon: new Icon(Icons.notifications),
          onPressed: () {},
        ),
      ]),
      body: new Column(
        children: <Widget>[
          new Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
            child: new Text(
              'Profile',
              style: new TextStyle(fontSize: 32.0),
            ),
          ),
          new Row(
            children: <Widget>[
              new Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Image(
                  image: new AssetImage('images/user2.jpg'),
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: 0,
          items: <BottomNavigationBarItem>[
            new BottomNavigationBarItem(
                title: new Text('Home'), icon: new Icon(Icons.home)),
            new BottomNavigationBarItem(
                title: new Text('Bookmarks'), icon: new Icon(Icons.bookmark)),
            new BottomNavigationBarItem(
                title: new Text('Likes'), icon: new Icon(Icons.thumb_up)),
            new BottomNavigationBarItem(
                title: new Text('Profile'),
                icon: new Icon(Icons.perm_identity)),
          ]),
    );
  }
}
