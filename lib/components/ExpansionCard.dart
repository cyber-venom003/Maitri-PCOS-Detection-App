import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpansionCard extends StatelessWidget {
  ExpansionCard({@required this.heading , @required this.content , this.contentListTile});
  final String heading;
  final String content;
  final List<Widget> contentListTile;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFCE0C0C),
            width: 2.25,
          ),
          borderRadius: BorderRadius.circular(7)
      ),
      child: Card(
        child: ExpansionTile(
          title: Text(
            "$heading",
            style: TextStyle(
                fontSize: 22.5,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          childrenPadding: EdgeInsets.fromLTRB(10, 2, 10, 7.5),
          children: [
            Text(
              "$content",
              style: TextStyle(
                  fontFamily: "Product Sans",
                  fontSize: 18.5
              ),
              textAlign: TextAlign.center,
            ),
          ],
          trailing: FaIcon(FontAwesomeIcons.chevronDown , color: Color(0xFFCE0C0C)),
        ),
        elevation: 2,
      ),
    );
  }
}