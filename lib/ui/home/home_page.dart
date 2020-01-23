import 'package:fl_app/ui/home/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
//        floatingActionButton: FloatingActionButton(child:Icon(Icons.cloud_circle),onPressed:(){} ,),
        body: Column(
      children: <Widget>[GradientAppBar("Planets"), HomePageBody()],
    ));
  }
}

class GradientAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 66.0;

  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 36.0),
        ),
      ),
      decoration: BoxDecoration(
              color: Color(0xFF736AB7)),
    );
  }
}
