import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maitri_pcos_detection_app/components/IconBackgroundCard.dart';
import 'package:maitri_pcos_detection_app/constants.dart';

class TestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconBackgroundCard(
              heading: 'General Test',
              background: Icon(Icons.person,  color: Color(0x40CE0C0C), size: 72.5,),
              content: kGeneralTest,
              width: 325,
              height: 225
          ),
          IconBackgroundCard(
              heading: 'Professional Test',
              background: FaIcon(FontAwesomeIcons.stethoscope,  color: Color(0x40CE0C0C), size: 72.5,),
              content: kProfessionaTest,
              width: 325,
              height: 200
          ),
        ],
      ),
    );
  }
}
