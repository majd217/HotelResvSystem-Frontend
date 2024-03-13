import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hotelresvfrontend/responsiveLayout/desktopLayout/homeView.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return Container(
            child: HomeView(),
          );
        } else {
          return Container(
            child: HomeView(),
          );
        }
      }),
    );
  }
}
