import 'package:flutter/material.dart';

class IconBackgroundCard extends StatelessWidget {
  IconBackgroundCard({@required this.heading , @required this.background , @required this.content , @required this.width , @required this.height});
  final String heading;
  final String content;
  final Widget background;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFCE0C0C),
            width: 2.25,
          ),
          borderRadius: BorderRadius.circular(22)
      ),
      child: Container(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              child: Center(child: background),
            ),
            Container(
              width: width,
              height: height,
              padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 20),
              child: Column(
                children: [
                  Text(
                    '$heading',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25
                    ),
                  ),
                  SizedBox(height: 15,),
                  Text(
                    '$content',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 21
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
