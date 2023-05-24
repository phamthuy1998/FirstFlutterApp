import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';


class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key, required this.title});

  final String title;

  @override
  State<MyProfilePage> createState() => _MyProfilePage();
}

class _MyProfilePage extends State<MyProfilePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            // Navigator.pop(context);
            // Navigator.of(context).popUntil((route) {
            //   return route.settings.name == "ScreenToPopBackTo";
            // });
            Get.back();
          },
        ),
        title: Text("This is Profile Screen"),
      ),
      body: Container(),
    );
  }
}
