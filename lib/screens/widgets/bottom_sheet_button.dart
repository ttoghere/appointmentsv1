import 'package:appointmentsv1/screens/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomSheetButton extends StatelessWidget {
  BottomSheetButton({
    Key? key,
    // required this.widget,
    required this.colorChanger,
    required this.message,
  }) : super(key: key);

  final String message;
  bool colorChanger;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: EdgeInsets.all(16),
        color: Constants.pink,
        child: Row(
          children: [
            Image.asset("assets/noti.png"),
            SizedBox(
              width: 4,
            ),
            Text(
              message,
              style: Constants.textStyleWO(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Constants.white),
            ),
          ],
        ),
      ),
    );
  }
}
