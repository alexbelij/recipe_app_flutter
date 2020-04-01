import 'package:flutter/material.dart';
import 'package:recipe_app_design/screens/Discover/discoverPage.dart';
import 'package:recipe_app_design/menus/bottomNav.dart';

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  int index = 0;

  void toggleView(int i) {
    setState(() {
      index = i;
      print('got it! ${index}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DiscoverPage(),
      bottomNavigationBar: myBottomNav(toggleView: toggleView, index: index),
    );
  }
}