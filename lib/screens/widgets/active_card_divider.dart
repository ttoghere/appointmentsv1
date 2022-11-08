import 'package:flutter/material.dart';

import '../../constants.dart';

class ActiveCardDivider extends StatelessWidget {
  const ActiveCardDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(bottom: size.height / 132.3),
      child: VerticalDivider(
        thickness: 2,
        color: Constants.dividerGrey,
      ),
    );
  }
}
