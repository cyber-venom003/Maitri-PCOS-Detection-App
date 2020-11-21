import 'package:flutter/material.dart';
import '../components/ExpansionCard.dart';

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
            SizedBox(height: 22.5,),
            ExpansionCard(
                heading: "What is PCOS?",
                content: "Polycystic Ovary Syndrome, or PCOS, is a health condition that affects about 10 million people in the world. The exact cause is unknown, but it is considered a hormonal problem. Genetics and environmental factors are believed to be involved in the development of PCOS. It is a leading cause of female infertility and is responsible for a number of symptoms that can affect the body physically and emotionally.",
            ),
            SizedBox(height: 20,),
            ExpansionCard(
                heading: "Diagnosis of PCOS",
                content: "Symptoms of PCOS may begin shortly after puberty, but can also develop during the later teen years and early adulthood. People with PCOS typically have irregular or missed periods as a result of not ovulating. Although some people may develop cysts on their ovaries, many people do not."
            ),
            SizedBox(height: 20,),
            ExpansionCard(
                heading: "Symptoms of PCOS",
                content: "Common symptoms incluce: \n \n Weight gain \n Fatigue \n Unwanted hair growth \n Thinning hair on the head \n Infertility \n Acne \n Mood changes \n Pelvic pain \n Headaches \n Sleep problems"
            )
          ]
        )
      )
    );
  }
}



