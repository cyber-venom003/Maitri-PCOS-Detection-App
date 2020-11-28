import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpansionCard extends StatefulWidget {
  ExpansionCard({@required this.heading , @required this.content});
  final String heading;
  final String content;
  @override
  _ExpansionCardState createState() => _ExpansionCardState();
}

class _ExpansionCardState extends State<ExpansionCard> {
  IconData cardTrailIcon = FontAwesomeIcons.chevronDown;
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
            "${widget.heading}",
            style: TextStyle(
                fontSize: 22.5,
                fontWeight: FontWeight.w500
            ),
            textAlign: TextAlign.center,
          ),
          childrenPadding: EdgeInsets.symmetric(vertical: 10 , horizontal: 10),
          children: [
            Text(
              "${widget.content}",
              style: TextStyle(
                  fontFamily: "Product Sans",
                  fontSize: 18.5
              ),
              textAlign: TextAlign.center,
            ),
          ],
          trailing: FaIcon(cardTrailIcon , color: Color(0xFFCE0C0C)),
          onExpansionChanged: (value){
            setState(() {
              cardTrailIcon = value == true ? FontAwesomeIcons.chevronUp : FontAwesomeIcons.chevronDown;
            });
          },
        ),
        elevation: 2,
      ),
    );
  }
}
