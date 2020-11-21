import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
          children: [
            SizedBox(height: 13,),
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
          ]
        )
      )
    );
  }
}
