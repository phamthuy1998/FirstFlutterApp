import 'package:flutter/material.dart';
import 'package:flutter_basic/main/main_controller.dart';
import 'package:flutter_basic/profile.dart';
import 'package:flutter_basic/util/log_dog_utils.dart';
import 'package:get/get.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    GetMaterialApp(
      enableLog: true,
      debugShowCheckedModeBanner: true,
      defaultTransition: Transition.cupertino,
      home: const MyApp(),
      navigatorKey: navigatorKey,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.light,
    ),
  );
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
  final mainController = Get.put(MainController());

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    mainController.clearWhenDispose();
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
          Builder(builder: (context) {
            return IconButton(
                onPressed: () {
                  Scaffold.of(context).showBottomSheet(
                        (context) => Text('Flutter From Zero to Hero'),
                  );
                },
                icon: Icon(Icons.notification_add_rounded),);
          })
        ],
      ),
      body: Obx(() {
        return _mainBody();
      }),
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
                      Image.network(
                          "https://www.thespruce.com/thmb/c3znkzZgMeuvzBy4wH13jVllfUo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/plants-with-big-flowers-4138211-hero-b10becb169064cc4b3c7967adc1b22e1.jpg"),
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
          if (value == 0) {
            // PersistentNavBarNavigator.pushNewScreen(
            //   context,
            //   screen: MyApp(),
            //   withNavBar: false, // OPTIONAL VALUE. True by default.
            //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
            // );
            Dog.d("go to my page");
            Get.to(const MyApp());
          } else if (value == 1)
            // PersistentNavBarNavigator.pushNewScreen(
            //   context,
            //   screen: Profile(),
            //   withNavBar: false, // OPTIONAL VALUE. True by default.
            //   pageTransitionAnimation: PageTransitionAnimation.cupertino,
            // );
            Get.to(const MyProfilePage(
              title: '',
            ));
        },
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: const Icon(Icons.verified_user_sharp), label: "Profile"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   _counter++;
          // });
          mainController.setCount(_counter++);
        },
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Widget _mainBody() {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          TextButton(
            onPressed: () {
              Dog.d("go to my page");
              Get.to(const MyProfilePage(title: "Hellllllooo"));
            },
            child: const Text("next screen"),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text("this is listview: ${mainController.counter.value}"),
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
    );
  }
}
