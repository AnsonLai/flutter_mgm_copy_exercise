import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MGM Mockup',
      debugShowCheckedModeBanner: false,
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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 25, 0, 20),
                  child: Text(
                    'Welcome Casey',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 30,
                    ),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.all(10.0),
                              height: 50,
                              width: 120,
                              color: Colors.lightGreenAccent[100],
                              child: const Center(child: Text('LOGO')),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.fromLTRB(10, 15, 0, 15),
                              child: Text(
                                'Jun. 26th - Jun. 28th',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ]),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                margin:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 10),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Text(
                                        'Floor',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        '20',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                        ),
                                      )
                                    ])),
                            Container(
                              height: 30.0,
                              width: 1.0,
                              color: Colors.grey,
                              margin: const EdgeInsets.only(
                                  left: 10.0, right: 10.0),
                            ),
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Room',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                  Text(
                                    '201',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  )
                                ]),
                            Container(
                              margin: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                              child: DropdownButton<String>(
                                value: 'View Directions',
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                style: TextStyle(color: Colors.deepPurple[900]),
                                underline: Container(
                                  height: 0,
                                ),
                                onChanged: (String newValue) {
                                  setState(() {});
                                },
                                items: <String>[
                                  'View Directions'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            )
                          ]),
                      GridView.count(
                        shrinkWrap: true,
                        childAspectRatio: 1.5,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(8, 5, 4, 4),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple[800],
                              border: Border.all(color: Colors.deepPurple[900]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.vpn_key,
                                  color: Colors.white,
                                  size: 50.0,
                                ),
                                Text(
                                  'Use Digital Key',
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(4, 5, 8, 4),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple[900]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.qr_code,
                                  color: Colors.deepPurple[900],
                                  size: 50.0,
                                ),
                                Text('Print Room Key')
                              ],
                            ),
                          ),
                        ],
                      ),
                      GridView.count(
                        shrinkWrap: true,
                        childAspectRatio: 1.5,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(8, 4, 4, 5),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple[900]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.text_snippet,
                                  color: Colors.deepPurple[900],
                                  size: 50.0,
                                ),
                                Text('Room Details')
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(4, 4, 8, 5),
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.deepPurple[900]),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15.0),
                                  bottomRight: Radius.circular(15.0),
                                  topLeft: Radius.circular(15.0),
                                  bottomLeft: Radius.circular(15.0)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.people,
                                  color: Colors.deepPurple[900],
                                  size: 50.0,
                                ),
                                Text('2 Guests')
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                              margin: const EdgeInsets.fromLTRB(0, 5, 0, 0))
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(5, 20, 0, 0),
                  child: Text(
                    'Hungry? Make Reservations',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.king_bed),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_membership),
            label: 'Loyalty',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
        currentIndex: 0,
        showUnselectedLabels: true,
        selectedItemColor: Colors.indigo[900],
        unselectedItemColor: Colors.grey[350],
        onTap: (int i) {/* ... */},
      ),
    );
  }
}
