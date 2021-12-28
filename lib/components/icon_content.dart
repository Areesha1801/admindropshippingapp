import 'package:flutter/material.dart';

import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({Key key, this.icon, this.label, this.label1})
      : super(key: key);

  final IconData icon;
  final String label;
  final String label1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 60.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          label1,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
