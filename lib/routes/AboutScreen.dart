import 'package:flutter/material.dart';
import '../components/ExpansionCard.dart';
import '../constants.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
        child: ListView(
          children: [
            SizedBox(height: 22.5,),
            Text(
              'MAITRI helps you diagonise PCOS.50% of the women suffering from PCOS goes undiagonised and it\'s and alarming helath issue which if not taken care in preliminary stage can also led to cancer.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 22.5,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Product Sans',
                  color: Colors.black
              ),
            ),
            SizedBox(height: 36.5,),
            ExpansionCard(
                heading: "What is PCOS?",
                content: kPcosDetails,
            ),
            SizedBox(height: 20,),
            ExpansionCard(
                heading: "Diagnosis of PCOS",
                content: kPcosDiagnosis,
            ),
            SizedBox(height: 20,),
            ExpansionCard(
                heading: "Symptoms of PCOS",
                content: kPcosSymptoms,
            )
          ]
        )
      )
    );
  }
}



