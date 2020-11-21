import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maitri_pcos_detection_app/routes/AboutScreen.dart';
import 'package:maitri_pcos_detection_app/routes/RemedyScreen.dart';
import 'package:maitri_pcos_detection_app/routes/TestScreen.dart';

void main() {
  runApp(Driver());
}

class Driver extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xFFCE0C0C),
                title: Text(
                    'Maitri',
                    style: TextStyle(
                      fontSize: 22.5
                    ),
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'About PCOS', icon: Icon(Icons.info_outline , size: 27.5,),),
                    Tab(text: 'Test', icon: FaIcon(FontAwesomeIcons.stethoscope , size: 27.5,)),
                    Tab(text: 'Remedies', icon: FaIcon(FontAwesomeIcons.bookMedical , size: 27.5,)),
                  ],
                  indicatorColor: Colors.white,
                ),
              ),
              body: TabBarView(
                children: [
                  AboutScreen(),
                  TestScreen(),
                  RemedyScreen()
                ],
              ),
            )
        )
    );
  }
}