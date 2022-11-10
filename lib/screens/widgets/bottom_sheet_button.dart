import 'package:appointmentsv1/screens/widgets/widgets_shelf.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomSheetButton extends StatelessWidget {
  BottomSheetButton({
    Key? key,
    required this.widget,
    required this.colorChanger,
  }) : super(key: key);

  final PastAppointments widget;
  bool colorChanger;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (colorChanger) {
          Navigator.of(context).pop();
        } else {
          Navigator.pop(context);
        }
      },
      child: Container(
        padding: EdgeInsets.all(16),
        color: Constants.pink,
        child: Row(
          children: [
            Icon(
              Icons.notification_important_outlined,
              color: Colors.white,
              size: 19,
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "Share The Doctor",
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
