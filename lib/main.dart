import 'package:flutter/material.dart';
import 'package:flutter_basic/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: Text("Hello, this is my first Flutter app"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notification_add_rounded))
        ],
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Text("this is listview item 2"),
            ),
            Text("this is listview item 1"),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(width: 4, color: Colors.yellow)),
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("This is drawable header"),
                      Text("abc dasjdhkj df"),
                      // Image(image: AssetImage('assets/img1.jpeg'))
                      Expanded(
                          child: Container(
                        color: Colors.red,
                      ))
                    ],
                  ),
                )),
            Text("This is item 1"),
            Text("This is item 2"),
            Text("This is item 3"),
            Text("This is item 4"),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          print("value: $value");
          if (value == 0)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          else if (value == 1)
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
        },
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: const Icon(Icons.verified_user_sharp), label: "Profile"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
